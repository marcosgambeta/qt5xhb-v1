//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

#include "qt5xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oModel
   LOCAL oView
   LOCAL nRow

   IF !File("test.dbf")
      DBCreate("test", {{"field1    ", "c", 20, 0}, ;
                        {"field2    ", "c", 20, 0}, ;
                        {"field3    ", "c", 20, 0}, ;
                        {"field4    ", "c", 20, 0}, ;
                        {"field5    ", "c", 20, 0}, ;
                        {"field6    ", "c", 20, 0}, ;
                        {"field7    ", "c", 20, 0}, ;
                        {"field8    ", "c", 20, 0}, ;
                        {"field9    ", "c", 20, 0}, ;
                        {"field10   ", "c", 20, 0}, ;
                        {"field11   ", "c", 20, 0}, ;
                        {"field12   ", "c", 20, 0}, ;
                        {"field13   ", "c", 20, 0}, ;
                        {"field14   ", "c", 20, 0}, ;
                        {"field15   ", "c", 20, 0}, ;
                        {"field16   ", "c", 20, 0}, ;
                        {"field17   ", "c", 20, 0}, ;
                        {"field18   ", "c", 20, 0}, ;
                        {"field19   ", "c", 20, 0}, ;
                        {"field20   ", "c", 20, 0}})
   ENDIF

   USE test ALIAS test

   IF RecCount() == 0

      FOR nRow := 1 TO 10000
         APPEND BLANK
         REPLACE field1  WITH AllTrim(Str(nRow)) + "," + AllTrim(Str( 1))
         REPLACE field2  WITH AllTrim(Str(nRow)) + "," + AllTrim(Str( 2))
         REPLACE field3  WITH AllTrim(Str(nRow)) + "," + AllTrim(Str( 3))
         REPLACE field4  WITH AllTrim(Str(nRow)) + "," + AllTrim(Str( 4))
         REPLACE field5  WITH AllTrim(Str(nRow)) + "," + AllTrim(Str( 5))
         REPLACE field6  WITH AllTrim(Str(nRow)) + "," + AllTrim(Str( 6))
         REPLACE field7  WITH AllTrim(Str(nRow)) + "," + AllTrim(Str( 7))
         REPLACE field8  WITH AllTrim(Str(nRow)) + "," + AllTrim(Str( 8))
         REPLACE field9  WITH AllTrim(Str(nRow)) + "," + AllTrim(Str( 9))
         REPLACE field10 WITH AllTrim(Str(nRow)) + "," + AllTrim(Str(10))
         REPLACE field11 WITH AllTrim(Str(nRow)) + "," + AllTrim(Str(11))
         REPLACE field12 WITH AllTrim(Str(nRow)) + "," + AllTrim(Str(12))
         REPLACE field13 WITH AllTrim(Str(nRow)) + "," + AllTrim(Str(13))
         REPLACE field14 WITH AllTrim(Str(nRow)) + "," + AllTrim(Str(14))
         REPLACE field15 WITH AllTrim(Str(nRow)) + "," + AllTrim(Str(15))
         REPLACE field16 WITH AllTrim(Str(nRow)) + "," + AllTrim(Str(16))
         REPLACE field17 WITH AllTrim(Str(nRow)) + "," + AllTrim(Str(17))
         REPLACE field18 WITH AllTrim(Str(nRow)) + "," + AllTrim(Str(18))
         REPLACE field19 WITH AllTrim(Str(nRow)) + "," + AllTrim(Str(19))
         REPLACE field20 WITH AllTrim(Str(nRow)) + "," + AllTrim(Str(20))
      NEXT nRow

   ENDIF

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(800, 600)

   oModel := myModel():new()

   oView := QTableView():new(oWindow)
   oView:move(10, 10)
   oView:resize(800 - 20, 600 - 20)
   oView:setModel(oModel)

   oWindow:show()

   oApp:exec()

   oModel:delete()

   oWindow:delete()

   oApp:delete()

   USE

RETURN NIL

#include "hbclass.ch"

CLASS myModel INHERIT HAbstractTableModelV2

   METHOD new
   METHOD rowCount
   METHOD columnCount
   METHOD data
   METHOD headerData
   METHOD flags
   METHOD setData

END CLASS

METHOD new(...) CLASS myModel

   ::super:new(...)

   ::setRowCountCB({|...|::rowCount(...)})
   ::setColumnCountCB({|...|::columnCount(...)})
   ::setDataCB({|...|::data(...)})
   ::setHeaderDataCB({|...|::headerData(...)})
   ::setFlagsCB({|...|::flags(...)})
   ::setSetDataCB({|...|::setData(...)})

RETURN self

METHOD rowCount() CLASS myModel
RETURN RecCount()

METHOD columnCount() CLASS myModel
RETURN FCount()

METHOD data(pIndex, nRole) CLASS myModel

   LOCAL oVariant := QVariant():new()
   LOCAL oIndex := QModelIndex():newFrom(pIndex)
   LOCAL nRow := oIndex:row()
   LOCAL nColumn := oIndex:column()

   IF oIndex:isValid()

      DBGoTo(nRow + 1)

      IF nRole == Qt_DisplayRole
         oVariant := QVariant():new(FieldGet(nColumn + 1))
      ELSEIF nRole == Qt_EditRole
         oVariant := QVariant():new(FieldGet(nColumn + 1))
      ENDIF

   ENDIF

RETURN oVariant

METHOD headerData(nSection, nOrientation, nRole) CLASS myModel

   LOCAL oVariant := QVariant():new()

   IF nOrientation == Qt_Horizontal .AND. nRole == Qt_DisplayRole
      oVariant := QVariant():new("Campo " + AllTrim(Str(nSection + 1)))
   ELSEIF nOrientation == Qt_Vertical .AND. nRole == Qt_DisplayRole
      oVariant := QVariant():new("Registro " + AllTrim(Str(nSection + 1)))
   ENDIF

RETURN oVariant

METHOD flags(pIndex) CLASS myModel

   LOCAL nFlags := Qt_ItemIsSelectable + Qt_ItemIsEditable + Qt_ItemIsEnabled
   LOCAL oIndex := QModelIndex():newFrom(pIndex)
   LOCAL nRow := oIndex:row()
   LOCAL nColumn := oIndex:column()

RETURN nFlags

METHOD setData(pIndex, pVariant, nRole) CLASS myModel

   LOCAL lSuccess := .F.
   LOCAL oIndex := QModelIndex():newFrom(pIndex)
   LOCAL oVariant := QVariant():newFrom(pVariant)
   LOCAL nRow := oIndex:row()
   LOCAL nColumn := oIndex:column()
   LOCAL cValue := ""

   IF oIndex:isValid()

      IF nRole == Qt_EditRole

         DBGoTo(nRow + 1)

         cValue := oVariant:toString()

         IF !Empty(cValue)
            FieldPut(nColumn + 1, oVariant:toString())
            lSuccess := .T.
         ENDIF

      ENDIF

   ENDIF

RETURN lSuccess

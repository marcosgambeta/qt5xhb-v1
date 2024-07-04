//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

#include "qt5xhb.ch"

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oModel
   LOCAL oView
   LOCAL nRow

   IF !file("test.dbf")
      dbcreate("test", {{"field1    ", "c", 20, 0}, ;
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

   IF reccount() == 0

      FOR nRow := 1 TO 10000
         APPEND BLANK
         REPLACE field1  WITH alltrim(str(nRow)) + "," + alltrim(str( 1))
         REPLACE field2  WITH alltrim(str(nRow)) + "," + alltrim(str( 2))
         REPLACE field3  WITH alltrim(str(nRow)) + "," + alltrim(str( 3))
         REPLACE field4  WITH alltrim(str(nRow)) + "," + alltrim(str( 4))
         REPLACE field5  WITH alltrim(str(nRow)) + "," + alltrim(str( 5))
         REPLACE field6  WITH alltrim(str(nRow)) + "," + alltrim(str( 6))
         REPLACE field7  WITH alltrim(str(nRow)) + "," + alltrim(str( 7))
         REPLACE field8  WITH alltrim(str(nRow)) + "," + alltrim(str( 8))
         REPLACE field9  WITH alltrim(str(nRow)) + "," + alltrim(str( 9))
         REPLACE field10 WITH alltrim(str(nRow)) + "," + alltrim(str(10))
         REPLACE field11 WITH alltrim(str(nRow)) + "," + alltrim(str(11))
         REPLACE field12 WITH alltrim(str(nRow)) + "," + alltrim(str(12))
         REPLACE field13 WITH alltrim(str(nRow)) + "," + alltrim(str(13))
         REPLACE field14 WITH alltrim(str(nRow)) + "," + alltrim(str(14))
         REPLACE field15 WITH alltrim(str(nRow)) + "," + alltrim(str(15))
         REPLACE field16 WITH alltrim(str(nRow)) + "," + alltrim(str(16))
         REPLACE field17 WITH alltrim(str(nRow)) + "," + alltrim(str(17))
         REPLACE field18 WITH alltrim(str(nRow)) + "," + alltrim(str(18))
         REPLACE field19 WITH alltrim(str(nRow)) + "," + alltrim(str(19))
         REPLACE field20 WITH alltrim(str(nRow)) + "," + alltrim(str(20))
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

RETURN

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
RETURN reccount()

METHOD columnCount() CLASS myModel
RETURN fcount()

METHOD data(pIndex, nRole) CLASS myModel

   LOCAL oVariant := QVariant():new()
   LOCAL oIndex := QModelIndex():newFrom(pIndex)
   LOCAL nRow := oIndex:row()
   LOCAL nColumn := oIndex:column()

   IF oIndex:isValid()

      dbgoto(nRow + 1)

      IF nRole == Qt_DisplayRole
         oVariant := QVariant():new(fieldget(nColumn + 1))
      ELSEIF nRole == Qt_EditRole
         oVariant := QVariant():new(fieldget(nColumn + 1))
      ENDIF

   ENDIF

RETURN oVariant

METHOD headerData(nSection, nOrientation, nRole) CLASS myModel

   LOCAL oVariant := QVariant():new()

   IF nOrientation == Qt_Horizontal .AND. nRole == Qt_DisplayRole
      oVariant := QVariant():new("Campo " + alltrim(str(nSection + 1)))
   ELSEIF nOrientation == Qt_Vertical .AND. nRole == Qt_DisplayRole
      oVariant := QVariant():new("Registro " + alltrim(str(nSection + 1)))
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

         dbgoto(nRow + 1)

         cValue := oVariant:toString()

         IF !empty(cValue)
            fieldput(nColumn + 1, oVariant:toString())
            lSuccess := .T.
         ENDIF

      ENDIF

   ENDIF

RETURN lSuccess

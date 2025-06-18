//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

STATIC s_aDados

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oModel
   LOCAL oView
   LOCAL nRow
   LOCAL nColumn

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(800, 600)

   s_aDados := array(100, 100)

   FOR nRow := 0 TO 99
      FOR nColumn := 0 TO 99
         s_aDados[nRow + 1, nColumn + 1] := AllTrim(Str(nRow)) + "," + AllTrim(Str(nColumn))
      NEXT nColumn
   NEXT nRow

   oModel := myModel():new()

   oView := QTableView():new(oWindow)
   oView:move(10, 10)
   oView:resize(800 - 20, 600 - 20)
   oView:setModel(oModel)
   oView:resizeRowsToContents()
   oView:resizeColumnsToContents()

   oWindow:show()

   oApp:exec()

   oModel:delete()

   oWindow:delete()

   oApp:delete()

RETURN NIL

#include <hbclass.ch>

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
RETURN Len(s_aDados)

METHOD columnCount() CLASS myModel
RETURN Len(s_aDados[1])

METHOD data(pIndex, nRole) CLASS myModel

   LOCAL oVariant := QVariant():new()
   LOCAL oIndex := QModelIndex():newFrom(pIndex)
   LOCAL nRow := oIndex:row()
   LOCAL nColumn := oIndex:column()

   IF oIndex:isValid()

      IF nRole == Qt_DisplayRole
         oVariant := QVariant():new(s_aDados[nRow + 1, nColumn + 1])
      ELSEIF nRole == Qt_EditRole
         oVariant := QVariant():new(s_aDados[nRow + 1, nColumn + 1])
      ENDIF

   ENDIF

RETURN oVariant

METHOD headerData(nSection, nOrientation, nRole) CLASS myModel

   LOCAL oVariant := QVariant():new()

   IF nOrientation == Qt_Horizontal .AND. nRole == Qt_DisplayRole
      oVariant := QVariant():new("Coluna " + AllTrim(Str(nSection)))
   ELSEIF nOrientation == Qt_Vertical .AND. nRole == Qt_DisplayRole
      oVariant := QVariant():new("Linha " + AllTrim(Str(nSection)))
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

         cValue := oVariant:toString()

         IF !empty(cValue)
            s_aDados[nRow + 1, nColumn + 1] := oVariant:toString()
            lSuccess := .T.
         ENDIF

      ENDIF

   ENDIF

RETURN lSuccess

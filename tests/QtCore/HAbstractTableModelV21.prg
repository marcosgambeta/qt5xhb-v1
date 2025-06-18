//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oModel
   LOCAL oView

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

RETURN NIL

#include <hbclass.ch>

CLASS myModel INHERIT HAbstractTableModelV2

   METHOD new
   METHOD rowCount
   METHOD columnCount
   METHOD data

END CLASS

METHOD new(...) CLASS myModel

   ::super:new(...)

   ::setRowCountCB({|...|::rowCount(...)})
   ::setColumnCountCB({|...|::columnCount(...)})
   ::setDataCB({|...|::data(...)})

RETURN self

METHOD rowCount() CLASS myModel
RETURN 100

METHOD columnCount() CLASS myModel
RETURN 10

METHOD data(pIndex, nRole) CLASS myModel

   LOCAL oVariant := QVariant():new()
   LOCAL oIndex := QModelIndex():newFrom(pIndex)
   LOCAL nRow := oIndex:row()
   LOCAL nColumn := oIndex:column()

   IF oIndex:isValid()

      IF nRole == Qt_DisplayRole
         oVariant := QVariant():new("C�lula " + AllTrim(Str(nRow)) + "," + AllTrim(Str(nColumn)))
      ENDIF

   ENDIF

RETURN oVariant

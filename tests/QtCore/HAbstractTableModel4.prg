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

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(800, 600)

   oModel := HAbstractTableModel():new()
   // total de linhas
   oModel:setRowCountCB({||100})
   // total de colunas
   oModel:setColumnCountCB({||10})
   // conte�do da c�lula
   oModel:setDisplayRoleCB({|nRow, nCol|"C�lula " + AllTrim(Str(nRow)) + "," + AllTrim(Str(nCol))})
   // t�tulos das colunas
   oModel:setHorizontalHeaderDisplayRoleCB({|nCol|"Coluna " + StrZero(nCol, 2)})
   // t�tulos das linhas
   oModel:setVerticalHeaderDisplayRoleCB({|nRow|"Linha " + AllTrim(Str(nRow))})

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

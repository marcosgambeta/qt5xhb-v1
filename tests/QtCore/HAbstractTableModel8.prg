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

   // create application
   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(800, 600)

   oModel := HAbstractTableModel():new()
   // total de linhas
   oModel:setRowCountCB({||1000000})
   // total de colunas
   oModel:setColumnCountCB({||10000})
   // conteúdo da célula
   oModel:setDisplayRoleCB({|nRow, nCol|"Célula " + AllTrim(Str(nRow)) + "," + AllTrim(Str(nCol))})
   // cor de frente da célula
   oModel:setForegroundRoleCB({|nRow, nCol|IIf(nRow / 2 == Int(nRow / 2), "blue", "dark green")})
   // títulos das colunas
   oModel:setHorizontalHeaderDisplayRoleCB({|nCol|"Coluna " + StrZero(nCol, 5)})
   // títulos das linhas
   oModel:setVerticalHeaderDisplayRoleCB({|nRow|"Linha " + AllTrim(Str(nRow))})

   oView := QTableView():new(oWindow)
   oView:move(10, 10)
   oView:resize(800 - 20, 600 - 20)
   oView:setModel(oModel)

   oWindow:show()

   // start application
   oApp:exec()

   // delete objects
   oModel:delete()
   oWindow:delete()
   oApp:delete()

RETURN NIL

//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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
   oModel:setRowCountCB({||100}) // total de linhas
   oModel:setColumnCountCB({||10}) // total de colunas
   oModel:setDisplayRoleCB({|nRow,nCol|"Célula "+alltrim(str(nRow))+","+alltrim(str(nCol))}) // conteúdo da célula
   oModel:setHorizontalHeaderDisplayRoleCB({|nCol|"Coluna "+strzero(nCol,2)}) // títulos das colunas
   oModel:setVerticalHeaderDisplayRoleCB({|nRow|"Linha "+alltrim(str(nRow))}) // títulos das linhas

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

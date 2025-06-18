//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

#include "qt5xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL aColorsNames
   LOCAL oWindow
   LOCAL oModel
   LOCAL oView

   oApp := QApplication():new()

   aColorsNames := QColor():colorNames()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Tabela de cores")
   oWindow:resize(800, 600)

   oModel := HAbstractTableModel():new()
   // total de linhas
   oModel:setRowCountCB({||Len(aColorsNames)})
   // total de colunas
   oModel:setColumnCountCB({||2})
   // conteúdo da célula
   oModel:setDisplayRoleCB({|nRow, nCol|{aColorsNames[nRow + 1], NIL}[nCol + 1]})
   // fonte da célula
   oModel:setFontRoleCB({|nRow, nCol|IIf(nCol == 0, QFont():new("Arial Black", 12), NIL)})
   // cor de fundo da célula
   oModel:setBackgroundRoleCB({|nRow, nCol|IIf(nCol == 0, NIL, aColorsNames[nRow + 1])})
   // títulos das colunas
   oModel:setHorizontalHeaderDisplayRoleCB({|nCol|{"Nome", "Cor"}[nCol + 1]})
   // títulos das linhas
   oModel:setVerticalHeaderDisplayRoleCB({|nRow|AllTrim(Str(nRow + 1))})

   oView := QTableView():new(oWindow)
   oView:move(10, 10)
   oView:resize(800 - 20, 600 - 20)
   oView:setModel(oModel)
   // ajusta a largura da coluna que exibe o nome da cor
   oView:resizeColumnToContents(0)
   // ajusta a largura da coluna que exibe a cor
   oView:horizontalHeader():setStretchLastSection(.T.)

   oWindow:show()

   oApp:exec()

   oModel:delete()

   oWindow:delete()

   oApp:delete()

RETURN NIL

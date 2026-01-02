//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// ATENÇÃO: a janela deste exemplo não irá aparecer imediatamente, havendo
// um tempo de espera que irá depender do capacidade de processamento do
// computador. Seu objetivo é testar a exibição de 10.000 linhas e 100
// colunas (1.000.000 de objetos da classe QTableWidgetItem).

#include "qt5xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oTable
   LOCAL r
   LOCAL c
   LOCAL nRows := 10000
   LOCAL nCols := 100

   // create application
   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Qt5xHb - teste")
   oWindow:resize(800, 600)

   oTable := QTableWidget():new(nRows, nCols, oWindow)
   oTable:move(10, 10)
   oTable:resize(800 - 20, 600- 20)

   FOR r := 1 TO nRows
      FOR c := 1 TO nCols
         oTable:setItem(r - 1, c - 1, QTableWidgetItem():new(AllTrim(Str(r)) + "," + AllTrim(Str(c))))
      NEXT c
   NEXT r

   oWindow:show()

   // start application
   oApp:exec()

   // delete objects
   oWindow:delete()
   oApp:delete()

RETURN NIL

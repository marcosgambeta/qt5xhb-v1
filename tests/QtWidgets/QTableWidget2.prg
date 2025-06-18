//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oTable
   LOCAL r
   LOCAL c
   LOCAL nRows := 1000
   LOCAL nCols := 100

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Qt5xHb - teste")
   oWindow:resize(800, 600)

   oTable := QTableWidget():new(nRows, nCols, oWindow)
   oTable:move(10, 10)
   oTable:resize(800 - 20, 600 - 20)

   FOR r := 1 TO nRows
      FOR c := 1 TO nCols
         oTable:setItem(r - 1, c - 1, QTableWidgetItem():new(AllTrim(Str(r)) + "," + AllTrim(Str(c))))
      NEXT c
   NEXT r

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN NIL

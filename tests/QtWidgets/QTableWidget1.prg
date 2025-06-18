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

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Qt5xHb - teste")
   oWindow:resize(320, 240)

   oTable := QTableWidget():new(12, 2, oWindow)
   oTable:move(10, 10)

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN NIL

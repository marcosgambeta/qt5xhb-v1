//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oPTE

   // create application
   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640, 480)

   oPTE := QPlainTextEdit():new(oWindow)
   oPTE:move(10, 10)

   oWindow:show()

   // start application
   oApp:exec()

   // delete objects
   oWindow:delete()
   oApp:delete()

RETURN NIL

//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oMainWindow
   LOCAL oDockWidget

   // create application
   oApp := QApplication():new()

   oMainWindow := QMainWindow():new()

   oDockWidget := QDockWidget():new("Teste", oMainWindow)

   oMainWindow:show()

   // start application
   oApp:exec()

   // delete objects
   oMainWindow:delete()
   oApp:delete()

RETURN NIL

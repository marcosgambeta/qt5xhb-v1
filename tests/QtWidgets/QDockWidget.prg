//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

#include "qt5xhb.ch"

PROCEDURE Main()

   LOCAL oApp
   LOCAL oMainWindow
   LOCAL oDockWidget

   oApp := QApplication():new()

   oMainWindow := QMainWindow():new()

   oDockWidget := QDockWidget():new("Teste", oMainWindow)

   oMainWindow:show()

   oApp:exec()

   oMainWindow:delete()
   
   oApp:delete()

RETURN

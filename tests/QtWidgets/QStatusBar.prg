//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oMainWindow
   LOCAL oStatusBar

   // create application
   oApp := QApplication():new()

   oMainWindow := QMainWindow():new()

   oStatusBar := oMainWindow:statusBar()
   oStatusBar:showMessage("teste")

   oMainWindow:show()

   // start application
   oApp:exec()

   // delete objects
   oMainWindow:delete()
   oApp:delete()

RETURN NIL

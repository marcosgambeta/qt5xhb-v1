/*

  Qt5xHb Project - Test Program

  Copyright (C) 2021 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/magsoftinfo/qt5xhb

*/

#include "qt5xhb.ch"

PROCEDURE Main()

   LOCAL oApp
   LOCAL oMainWindow
   LOCAL oStatusBar

   oApp := QApplication():new()

   oMainWindow := QMainWindow():new()

   oStatusBar := oMainWindow:statusBar()
   oStatusBar:showMessage( "teste" )

   oMainWindow:show()

   oApp:exec()

   oMainWindow:delete()

   oApp:delete()

RETURN

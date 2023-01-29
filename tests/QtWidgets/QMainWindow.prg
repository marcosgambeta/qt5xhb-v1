/*

  Qt5xHb Project - Test Program

  Copyright (C) 2023 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/magsoftinfo/qt5xhb-v1

*/

#include "qt5xhb.ch"

PROCEDURE Main()

   lOCAL oApp
   LOCAL oWindow

   oApp := QApplication():new()

   oWindow := QMainWindow():new()
   oWindow:setWindowTitle( "Teste" )
   oWindow:resize( 640, 480 )

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

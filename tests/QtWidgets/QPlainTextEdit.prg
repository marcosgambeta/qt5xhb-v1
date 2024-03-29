/*

  Qt5xHb Project - Test Program

  Copyright (c) 2024 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/magsoftinfo/qt5xhb-v1

*/

#include "qt5xhb.ch"

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oPTE

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle( "Teste" )
   oWindow:resize( 640, 480 )

   oPTE := QPlainTextEdit():new( oWindow )
   oPTE:move( 10, 10 )

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

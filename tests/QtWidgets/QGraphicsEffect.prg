/*

  Qt5xHb Project - Test Program

  Copyright (C) 2023 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/magsoftinfo/qt5xhb

*/

#include "qt5xhb.ch"

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oLabel

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle( "Test" )
   oWindow:resize( 640, 480 )

   oLabel := QLabel():new( "QLabel", oWindow )
   oLabel:move( 20, 20 )
   oLabel:setFont( QFont():new( "Arial Bold", 48 ) )
   oLabel:setGraphicsEffect( QGraphicsDropShadowEffect():new() )

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

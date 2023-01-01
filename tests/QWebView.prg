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
   LOCAL oWebView

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle( "Teste da classe QWebView" )
   oWindow:resize( 800, 600 )
   oWindow:show()

   oWebView := QWebView():new( oWindow )
   oWebView:setUrl( QUrl():new( "https://github.com/magsoftinfo/qt5xhb" ) )
   oWebView:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

/*

  Qt5xHb Project - Test Program

  Copyright (C) 2021 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/qt5xhb

*/

#include "qt5xhb.ch"

#ifdef __XHARBOUR__
REQUEST HB_GT_WIN
#endif

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oScrollBar

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle( "Teste" )
   oWindow:resize( 640, 480 )

   oScrollBar := QScrollBar():new( oWindow )
   oScrollBar:move( 20, 20 )
   oScrollBar:resize( 20, 400 )
   oScrollBar:setTooltip( "Eu sou um QScrollBar" )
   ? oScrollBar:onSliderMoved( {|oSender,nValue|test( oSender, nValue )} )

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

STATIC FUNCTION test( oSender, nValue )

   qout( "slider moved" )
   qout( oSender:classname() )
   qout( nValue )

RETURN NIL

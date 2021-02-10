/*

  Qt5xHb Project - Test Program

  Copyright (C) 2020 Marcos Antonio Gambeta

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
   LOCAL oDial

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle( "Teste" )
   oWindow:resize( 640, 480 )

   oDial := QDial():new( oWindow )
   oDial:move( 20, 20 )
   oDial:setTooltip( "Eu sou um QDial" )
   ? oDial:onActionTriggered( {|oSender,nAction|test( oSender, nAction )} )
   ? oDial:onSliderPressed( {|oSender|test2( oSender )} )
   ? oDial:onSliderReleased( {|oSender|test3( oSender )} )

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

STATIC FUNCTION test( oSender, nAction )

   qout( "action triggered" )
   qout( oSender:classname() )
   qout( nAction )

RETURN NIL

STATIC FUNCTION test2( oSender )

   qout( "slider pressed" )
   qout( oSender:classname() )

RETURN NIL

STATIC FUNCTION test3( oSender )

   qout( "slider released" )
   qout( oSender:classname() )

RETURN NIL

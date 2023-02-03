/*

  Qt5xHb Project - Test Program

  Copyright (c) 2023 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/magsoftinfo/qt5xhb-v1

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
   ? oDial:onSliderMoved( {|oSender,nValue|test( oSender, nValue )} )

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

STATIC FUNCTION test( oWidget, nValue )

   qout( "slider moved" )
   qout( oWidget:classname() )
   qout( nValue )

RETURN NIL

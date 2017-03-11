/*

  Qt5xHb Project - Test Program

  Copyright (C) 2012-2017 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com
  marcosgambeta AT gmail DOT com

  Website:
  https://github.com/marcosgambeta/Qt5xHb

  Users Groups:
  https://groups.google.com/forum/?hl=pt-BR#!forum/qtxhb    [ENGLISH]
  https://groups.google.com/forum/?hl=pt-BR#!forum/qtxhb-br [PORTUGUESE]

*/

#include "qt5xhb.ch"

#ifdef __XHARBOUR__
REQUEST HB_GT_WIN
#endif

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oDial

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640,480)
   oWindow:show()

   oDial := QDial():new(oWindow)
   oDial:move(20,20)
   oDial:setTooltip("Eu sou um QDial")
   ? oDial:onActionTriggered( {|w,p|test(w,p)} )
   ? oDial:onSliderPressed( {|w|test2(w)} )
   ? oDial:onSliderReleased( {|w|test3(w)} )
   oDial:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

STATIC FUNCTION test (w,p)

   qout("action triggered")
   qout(w)
   qout(p)

RETURN NIL

STATIC FUNCTION test2 (w)

   qout("slider pressed")
   qout(w)

RETURN NIL

STATIC FUNCTION test3 (w)

   qout("slider released")
   qout(w)

RETURN NIL

/*

  Qt5xHb Project - Test Program

  Copyright (C) 2018 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/Qt5xHb

*/

#include "qt5xhb.ch"

#ifdef __XHARBOUR__
REQUEST HB_GT_WIN
#endif

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oScrollBar

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640,480)
   oWindow:show()

   oScrollBar := QScrollBar():new(oWindow)
   oScrollBar:move(20,20)
   oScrollBar:resize(20,400)
   oScrollBar:setTooltip("Eu sou um QScrollBar")
   ? oScrollBar:onSliderMoved( {|w,v|test(w,v)} )
   oScrollBar:show()

   oApp:exec()
   
   oWindow:delete()
   
   oApp:delete()

RETURN

STATIC FUNCTION test (w,v)

   qout("slider moved")
   qout(w)
   qout(v)

RETURN NIL

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
   LOCAL oSlider

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640,480)
   oWindow:show()

   oSlider := QSlider():new(oWindow)
   oSlider:move(20,20)
   oSlider:resize(20,400)
   oSlider:setTooltip("Eu sou um QSlider")
   ? oSlider:onSliderMoved( {|w,v|test(w,v)} )
   oSlider:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

STATIC FUNCTION test (w,v)

   qout("slider moved")
   qout(w)
   qout(v)

RETURN NIL

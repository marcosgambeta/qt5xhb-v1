/*

  Qt5xHb Project - Test Program

  Copyright (C) 2020 Marcos Antonio Gambeta

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
   ? oSlider:onSliderMoved( {|oSender,nValue|test(oSender,nValue)} )
   oSlider:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

STATIC FUNCTION test (oSender,nValue)

   qout("slider moved")
   qout(oSender:classname())
   qout(nValue)

RETURN NIL

//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

#ifdef __XHARBOUR__
REQUEST HB_GT_WIN
#endif

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oSlider

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640, 480)

   oSlider := QSlider():new(oWindow)
   oSlider:move(20, 20)
   oSlider:resize(20, 400)
   oSlider:setTooltip("Eu sou um QSlider")
   ? oSlider:onSliderMoved({|oSender, nValue|test(oSender, nValue)})

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN NIL

STATIC FUNCTION test(oSender, nValue)

   QOut("slider moved")
   QOut(oSender:classname())
   QOut(nValue)

RETURN NIL

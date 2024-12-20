//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

#include "qt5xhb.ch"

#ifdef __XHARBOUR__
REQUEST HB_GT_WIN
#endif

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oScrollBar

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640, 480)

   oScrollBar := QScrollBar():new(oWindow)
   oScrollBar:move(20, 20)
   oScrollBar:resize(20, 400)
   oScrollBar:setTooltip("Eu sou um QScrollBar")
   ? oScrollBar:onSliderMoved({|oSender, nValue|test(oSender, nValue)})

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

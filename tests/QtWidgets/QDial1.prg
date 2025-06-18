//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

#include "qt5xhb.ch"

#ifdef __XHARBOUR__
REQUEST HB_GT_WIN
#endif

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oDial

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640, 480)

   oDial := QDial():new(oWindow)
   oDial:move(20, 20)
   oDial:setTooltip("Eu sou um QDial")
   ? oDial:onSliderMoved({|oSender, nValue|test(oSender, nValue)})

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN NIL

STATIC FUNCTION test(oWidget, nValue)

   QOut("slider moved")
   QOut(oWidget:classname())
   QOut(nValue)

RETURN NIL

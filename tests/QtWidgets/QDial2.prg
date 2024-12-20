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
   LOCAL oDial

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640, 480)

   oDial := QDial():new(oWindow)
   oDial:move(20, 20)
   oDial:setTooltip("Eu sou um QDial")
   ? oDial:onActionTriggered({|oSender, nAction|test(oSender, nAction)})
   ? oDial:onSliderPressed({|oSender|test2(oSender)})
   ? oDial:onSliderReleased({|oSender|test3(oSender)})

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN NIL

STATIC FUNCTION test(oSender, nAction)

   QOut("action triggered")
   QOut(oSender:classname())
   QOut(nAction)

RETURN NIL

STATIC FUNCTION test2(oSender)

   QOut("slider pressed")
   QOut(oSender:classname())

RETURN NIL

STATIC FUNCTION test3(oSender)

   QOut("slider released")
   QOut(oSender:classname())

RETURN NIL

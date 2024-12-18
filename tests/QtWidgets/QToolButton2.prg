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
   LOCAL oButton1
   LOCAL oButton2

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:resize(320, 240)

   oButton1 := QToolButton():new(oWindow)
   oButton1:move(20, 20)
   ? oButton1:onClicked({||qout("clicked-1")})
   ? oButton1:onPressed({||qout("pressed-1")})
   ? oButton1:onReleased({||qout("released-1")})

   oButton2 := QToolButton():new(oWindow)
   oButton2:move(20, 70)
   ? oButton2:onClicked({||qout("clicked-2")})
   ? oButton2:onPressed({||qout("pressed-2")})
   ? oButton2:onReleased({||qout("released-2")})

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN NIL

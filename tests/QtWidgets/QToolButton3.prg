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
   LOCAL oButton1
   LOCAL oButton2
   LOCAL oButton3

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:resize(320, 240)

   oButton1 := QToolButton():new(oWindow)
   oButton1:move(20, 20)
   ? oButton1:onClicked({||QOut("clicked-1")})
   ? oButton1:onPressed({||QOut("pressed-1")})
   ? oButton1:onReleased({||QOut("released-1")})

   oButton2 := QToolButton():new(oWindow)
   oButton2:move(20, 70)
   ? oButton2:onClicked({||QOut("clicked-2")})
   ? oButton2:onPressed({||QOut("pressed-2")})
   ? oButton2:onReleased({||QOut("released-2")})

   oButton3 := QToolButton():new(oWindow)
   oButton3:move(20, 120)
   ? oButton3:onClicked({||QOut("clicked-3")})
   ? oButton3:onPressed({||QOut("pressed-3")})
   ? oButton3:onReleased({||QOut("released-3")})

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN NIL

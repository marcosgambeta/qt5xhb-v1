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
   LOCAL oRadioButton1
   LOCAL oRadioButton2
   LOCAL oRadioButton3

   oApp := QApplication():new()

   oWindow := QWidget():new()

   oRadioButton1 := QRadioButton():new("RadioButton1", oWindow)
   oRadioButton1:move(20, 20)
   ? oRadioButton1:onClicked({||QOut("1-clicked")})
   ? oRadioButton1:onPressed({||QOut("1-pressed")})
   ? oRadioButton1:onReleased({||QOut("1-released")})

   oRadioButton2 := QRadioButton():new("RadioButton2", oWindow)
   oRadioButton2:move(20, 70)
   ? oRadioButton2:onClicked({||QOut("2-clicked")})
   ? oRadioButton2:onPressed({||QOut("2-pressed")})
   ? oRadioButton2:onReleased({||QOut("2-released")})

   oRadioButton3 := QRadioButton():new("RadioButton3", oWindow)
   oRadioButton3:move(20, 120)
   ? oRadioButton3:onClicked({||QOut("3-clicked")})
   ? oRadioButton3:onPressed({||QOut("3-pressed")})
   ? oRadioButton3:onReleased({||QOut("3-released")})

   oRadioButton2:setChecked(.T.)

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN NIL

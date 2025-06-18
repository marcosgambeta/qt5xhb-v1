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
   LOCAL oCheckBox1
   LOCAL oCheckBox2
   LOCAL oCheckBox3

   oApp := QApplication():new()

   oWindow := QWidget():new()

   oCheckBox1 := QCheckBox():new("CheckBox1", oWindow)
   oCheckBox1:move(20, 20)
   ? oCheckBox1:onClicked({||QOut("1-clicked")})
   ? oCheckBox1:onPressed({||QOut("1-pressed")})
   ? oCheckBox1:onReleased({||QOut("1-released")})
   ? oCheckBox1:onStateChanged({||QOut("1-stateChanged=" + AllTrim(Str(oCheckBox1:checkState())))})

   oCheckBox2 := QCheckBox():new("CheckBox2", oWindow)
   oCheckBox2:move(20, 70)
   ? oCheckBox2:onClicked({||QOut("2-clicked")})
   ? oCheckBox2:onPressed({||QOut("2-pressed")})
   ? oCheckBox2:onReleased({||QOut("2-released")})
   ? oCheckBox2:onStateChanged({||QOut("2-stateChanged=" + AllTrim(Str(oCheckBox2:checkState())))})

   oCheckBox3 := QCheckBox():new("CheckBox3", oWindow)
   oCheckBox3:move(20, 120)
   ? oCheckBox3:onClicked({||QOut("3-clicked")})
   ? oCheckBox3:onPressed({||QOut("3-pressed")})
   ? oCheckBox3:onReleased({||QOut("3-released")})
   ? oCheckBox3:onStateChanged({||QOut("3-stateChanged=" + AllTrim(Str(oCheckBox3:checkState())))})

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN NIL

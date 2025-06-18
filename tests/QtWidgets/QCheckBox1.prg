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
   LOCAL oCheckBox

   oApp := QApplication():new()

   oWindow := QWidget():new()

   oCheckBox := QCheckBox():new("CheckBox", oWindow)
   oCheckBox:move(20, 20)
   ? oCheckBox:onClicked({||QOut("clicked")})
   ? oCheckBox:onPressed({||QOut("pressed")})
   ? oCheckBox:onReleased ({||QOut("released")})
   ? oCheckBox:onStateChanged({||QOut("stateChanged=" + AllTrim(Str(oCheckBox:checkState())))})

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN NIL

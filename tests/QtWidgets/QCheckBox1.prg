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
   LOCAL oCheckBox

   // create application
   oApp := QApplication():new()

   oWindow := QWidget():new()

   oCheckBox := QCheckBox():new("CheckBox", oWindow)
   oCheckBox:move(20, 20)
   ? oCheckBox:onClicked({||qout("clicked")})
   ? oCheckBox:onPressed({||qout("pressed")})
   ? oCheckBox:onReleased ({||qout("released")})
   ? oCheckBox:onStateChanged({||qout("stateChanged=" + alltrim(str(oCheckBox:checkState())))})

   oWindow:show()

   // start application
   oApp:exec()

   // delete objects
   oWindow:delete()
   oApp:delete()

RETURN NIL

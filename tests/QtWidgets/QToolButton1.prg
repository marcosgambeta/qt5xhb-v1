/*

  Qt5xHb Project - Test Program

  Copyright (C) 2019 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/Qt5xHb

*/

#include "qt5xhb.ch"

#ifdef __XHARBOUR__
REQUEST HB_GT_WIN
#endif

PROCEDURE Main ()

   lOCAL oApp
   LOCAL oWindow
   LOCAL oButton

   oApp := QApplication():new()

   oWindow := QWidget():new()

   oButton := QToolButton():new(oWindow)
   oButton:move(20,20)
   ? oButton:onClicked({||qout("clicked")})
   ? oButton:onPressed({||qout("pressed")})
   ? oButton:onReleased({||qout("released")})

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

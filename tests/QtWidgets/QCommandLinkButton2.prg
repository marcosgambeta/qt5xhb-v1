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

   LOCAL oApp
   LOCAL oWindow
   LOCAL oButton1
   LOCAL oButton2

   oApp := QApplication():new()

   oWindow := QWidget():new():resize(320,240)

   oButton1 := QCommandLinkButton():new("texto 1","descrição 2",oWindow):move(20,20)
   ? oButton1:onClicked({||qout("clicked-1")})
   ? oButton1:onPressed({||qout("pressed-1")})
   ? oButton1:onReleased({||qout("released-1")})

   oButton2 := QCommandLinkButton():new("texto 2","descrição 2",oWindow):move(20,120)
   ? oButton2:onClicked({||qout("clicked-2")})
   ? oButton2:onPressed({||qout("pressed-2")})
   ? oButton2:onReleased({||qout("released-2")})

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

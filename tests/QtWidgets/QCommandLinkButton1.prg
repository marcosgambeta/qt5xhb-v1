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
   LOCAL oButton

   // create application
   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:resize(320, 240)

   oButton := QCommandLinkButton():new("texto", "descrição", oWindow)
   oButton:move(20, 20)
   ? oButton:onClicked({||qout("clicked")})
   ? oButton:onPressed({||qout("pressed")})
   ? oButton:onReleased({||qout("released")})

   oWindow:show()

   // start application
   oApp:exec()

   // delete objects
   oWindow:delete()
   oApp:delete()

RETURN NIL

/*

  Qt5xHb Project - Test Program

  Copyright (C) 2017 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com
  marcosgambeta AT gmail DOT com

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
   LOCAL oTimer

   oApp := QApplication():new()

   oWindow := QWidget():new()

   oWindow:setWindowTitle("Teste")

   oWindow:resize(640,480)

   oWindow:show()

   oTimer := QTimer():new(oWindow)
   ? oTimer:onTimeout({||qout("timer executado")})
   oTimer:setInterval(1000)
   oTimer:start()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

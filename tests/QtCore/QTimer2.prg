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
   LOCAL oTimer1
   LOCAL oTimer2

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640, 480)

   oWindow:show()

   oTimer1 := QTimer():new(oWindow)
   ? oTimer1:onTimeout({||QOut("timer 1 executado")})
   oTimer1:setInterval(1000)
   oTimer1:start()

   oTimer2 := QTimer():new(oWindow)
   ? oTimer2:onTimeout({||QOut("timer 2 executado")})
   oTimer2:setInterval(2000)
   oTimer2:start()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN NIL

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
   LOCAL oTimer3

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640, 480)

   oWindow:show()

   oTimer1 := QTimer():new(oWindow)
   oTimer1:setInterval(1000)
   ? oTimer1:onTimeout({||QOut("timer 1 executado")})

   oTimer2 := QTimer():new(oWindow)
   oTimer2:setInterval(2000)
   ? oTimer2:onTimeout({||QOut("timer 2 executado")})

   oTimer3 := QTimer():new(oWindow)
   oTimer3:setInterval(3000)
   ? oTimer3:onTimeout({||QOut("timer 3 executado")})

   oTimer1:start()
   oTimer2:start()
   oTimer3:start()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN NIL

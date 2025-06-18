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
   LOCAL oButton1
   LOCAL oButton2
   LOCAL oButton3

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:resize(320, 240)

   oButton1 := QPushButton():new("PushButton 1", oWindow)
   oButton1:move(20, 20)
   oButton1:setObjectName("button1")
   ? oButton1:connect("clicked()", @buttonClicked())

   oButton2 := QPushButton():new("PushButton 2", oWindow)
   oButton2:move(20, 70)
   oButton2:setObjectName("button2")
   ? oButton2:connect("clicked()", @buttonClicked())

   oButton3 := QPushButton():new("PushButton 3", oWindow)
   oButton3:move(20, 120)
   oButton3:setObjectName("button3")
   ? oButton3:connect("clicked()", @buttonClicked())

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN NIL

STATIC FUNCTION buttonClicked(oButton)

   IF oButton:objectName() == "button1"
      ? "button 1 clicked"
   ELSEIF oButton:objectName() == "button2"
      ? "button 2 clicked"
   ELSEIF oButton:objectName() == "button3"
      ? "button 3 clicked"
   ENDIF

RETURN NIL

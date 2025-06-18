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
   LOCAL oPushButton1
   LOCAL oPushButton2
   LOCAL oPushButton3
   LOCAL oButtonGroup
   LOCAL o

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:resize(640, 480)

   oPushButton1 := QPushButton():new("1", oWindow)
   oPushButton1:move(20, 20)

   oPushButton2 := QPushButton():new("2", oWindow)
   oPushButton2:move(20, 120)

   oPushButton3 := QPushButton():new("3", oWindow)
   oPushButton3:move(20, 220)

   oButtonGroup := QButtonGroup():new()
   ? oButtonGroup:pointer
   oButtonGroup:addButton(oPushButton1, 1)
   oButtonGroup:addButton(oPushButton2, 2)
   oButtonGroup:addButton(oPushButton3, 3)
   ? oButtonGroup:onButtonPressed1({|oSender, oButton|QOut(oSender:classname()), QOut(oButton:classname())})
   ? oButtonGroup:onButtonPressed2({|oSender, n|QOut(oSender:classname()), QOut(n)})

   ? oButtonGroup:id(oPushButton1)
   ? oButtonGroup:id(oPushButton2)
   ? oButtonGroup:id(oPushButton3)

   ? "0"
   o := oButtonGroup:button(0)
   ? ValType(o)
   ? oButtonGroup:button(0):className()
   ? oButtonGroup:button(0):metaObject():className()

   ? "1"
   o := oButtonGroup:button(1)
   ? ValType(o)
   ? oButtonGroup:button(1):className()
   ? oButtonGroup:button(1):metaObject():className()

   ? "2"
   o := oButtonGroup:button(2)
   ? ValType(o)
   ? oButtonGroup:button(2):className()
   ? oButtonGroup:button(2):metaObject():className()

   ? "3"
   o := oButtonGroup:button(3)
   ? ValType(o)
   ? oButtonGroup:button(3):className()
   ? oButtonGroup:button(3):metaObject():className()

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN NIL

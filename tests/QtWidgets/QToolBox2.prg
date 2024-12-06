//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

#include "qt5xhb.ch"

#ifdef __XHARBOUR__
REQUEST HB_GT_WIN
#endif

FUNCTION Main()

   LOCAL oApp
   LOCAL oToolBox
   LOCAL oWidget1
   LOCAL oWidget2
   LOCAL oWidget3

   oApp := QApplication():new()

   oToolBox := QToolBox():new()

   oWidget1 := QWidget():new()
   oWidget1:setObjectName("widget1")

   oWidget2 := QWidget():new()
   oWidget2:setObjectName("widget2")

   oWidget3 := QWidget():new()
   oWidget3:setObjectName("widget3")

   oToolBox:addItem(oWidget1, QIcon():new("../images/cut.png"), "Item 1")
   oToolBox:addItem(oWidget2, QIcon():new("../images/copy.png"), "Item 2")
   oToolBox:addItem(oWidget3, QIcon():new("../images/paste.png"), "Item 3")

   oToolBox:onCurrentChanged({|oSender,nItem|qout(nItem), qout(oToolBox:currentWidget():objectName())})

   oToolBox:show()

   oApp:exec()

   oToolBox:delete()

   oApp:delete()

RETURN NIL

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

   oApp := QApplication():new()

   oToolBox := QToolBox():new()

   oToolBox:addItem(QWidget():new(), QIcon():new("../images/cut.png"), "Item 1")
   oToolBox:addItem(QWidget():new(), QIcon():new("../images/copy.png"), "Item 2")
   oToolBox:addItem(QWidget():new(), QIcon():new("../images/paste.png"), "Item 3")

   oToolBox:onCurrentChanged({|oSender,nItem|qout(nItem)})

   oToolBox:show()

   oApp:exec()

   oToolBox:delete()

   oApp:delete()

RETURN NIL

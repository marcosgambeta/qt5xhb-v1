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

   LOCAL oApp
   LOCAL oToolBox

   oApp := QApplication():new()

   oToolBox := QToolBox():new()

   oToolBox:addItem(QWidget():new(), QIcon():new("images/cut.png"), "Item 1")
   oToolBox:addItem(QWidget():new(), QIcon():new("images/copy.png"), "Item 2")
   oToolBox:addItem(QWidget():new(), QIcon():new("images/paste.png"), "Item 3")
   
   oToolBox:onCurrentChanged({|pSender,nItem|qout(nItem)})

   oToolBox:show()

   oApp:exec()

   oToolBox:delete()

   oApp:delete()

RETURN

//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

#include "qt5xhb.ch"

#ifdef __XHARBOUR__
REQUEST HB_GT_WIN
#endif

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oDesktopWidget

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640, 480)

   oDesktopWidget := QApplication():desktop()

   ? "isVirtualDesktop = "
   ?? oDesktopWidget:isVirtualDesktop()

   ? "primaryScreen = "
   ?? oDesktopWidget:primaryScreen()

   ? "screenCount = "
   ?? oDesktopWidget:screenCount()

   ? "screenNumber = "
   ?? oDesktopWidget:screenNumber(oWindow)

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

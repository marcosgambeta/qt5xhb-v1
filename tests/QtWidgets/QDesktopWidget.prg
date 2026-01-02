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
   LOCAL oDesktopWidget

   // create application
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

   // start application
   oApp:exec()

   // delete objects
   oWindow:delete()
   oApp:delete()

RETURN NIL

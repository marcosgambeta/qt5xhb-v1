/*

  Exemplo do projeto Qt5xHb

  Copyright (C) 2012-2017 Marcos Antonio Gambeta

  E-mail: marcosgambeta@uol.com.br

  Website: https://github.com/marcosgambeta/Qt5xHb

  Grupo de usuários: http://br.groups.yahoo.com/neo/groups/qt4xhb/info

*/

#include "qt5xhb.ch"

#ifdef __XHARBOUR__
REQUEST HB_GT_WIN
#endif

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oDesktopWidget

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640,480)
   oWindow:show()

   oDesktopWidget := QApplication():desktop()
   
   ? "isVirtualDesktop = "
   ?? oDesktopWidget:isVirtualDesktop()

   ? "primaryScreen = "
   ?? oDesktopWidget:primaryScreen()

   ? "screenCount = "
   ?? oDesktopWidget:screenCount()

   ? "screenNumber = "
   ?? oDesktopWidget:screenNumber(oWindow)

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

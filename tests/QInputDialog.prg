/*

  Qt5xHb Project - Test Program

  Copyright (C) 2018 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/Qt5xHb

*/

#include "qt5xhb.ch"

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oButton

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:resize(640,480)
   oWindow:show()

   oButton := QPushButton():new("Mostrar janela de diálogo",oWindow)
   oButton:move(20,20)
   oButton:show()
   ? oButton:onClicked({|w|dialog(oWindow)})

   oApp:exec()
   
   oWindow:delete()

   oApp:delete()

RETURN

STATIC FUNCTION dialog (oWindow)

   LOCAL oInputDialog := QInputDialog():new(oWindow)

   oInputDialog:exec()

   oInputDialog:delete()

RETURN NIL

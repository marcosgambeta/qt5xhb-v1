/*

  Qt5xHb Project - Test Program

  Copyright (C) 2020 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/qt5xhb

*/

#include "qt5xhb.ch"

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oButton

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:resize(640,480)

   oButton := QPushButton():new("Mostrar janela de diálogo",oWindow)
   oButton:move(20,20)
   ? oButton:onClicked({||ShowColorDialog(oWindow)})

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

STATIC FUNCTION ShowColorDialog(oWindow)

   LOCAL oColorDialog := QColorDialog():new(oWindow)

   oColorDialog:exec()

   oColorDialog:delete()

RETURN NIL

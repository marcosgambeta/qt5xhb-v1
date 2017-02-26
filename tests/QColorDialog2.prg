/*

  Qt5xHb Project - Test Program

  Copyright (C) 2012-2017 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com
  marcosgambeta AT gmail DOT com

  Website:
  https://github.com/marcosgambeta/Qt5xHb

  Users Groups:
  https://groups.google.com/forum/?hl=pt-BR#!forum/qtxhb    [ENGLISH]
  https://groups.google.com/forum/?hl=pt-BR#!forum/qtxhb-br [PORTUGUESE]

*/

#include "qt5xhb.ch"

#ifdef __XHARBOUR__
REQUEST HB_GT_WIN
#endif

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
   oButton:onClicked({||ShowColorDialog(oWindow)})

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

STATIC FUNCTION ShowColorDialog (oWindow)

   LOCAL oColorDialog

   oColorDialog := QColorDialog():new(oWindow)

   oColorDialog:onColorSelected({|pWidget,pColor|ShowColorSelected(pColor)})

   oColorDialog:exec()

   oColorDialog:onColorSelected()

   oColorDialog:delete()

RETURN NIL

STATIC FUNCTION ShowColorSelected (pColor)

   LOCAL oColor := QColor():newFrom(pColor)

   ? "name=",oColor:name()
   ? "red=",oColor:red()
   ? "green=",oColor:green()
   ? "blue=",oColor:blue()
   ? "rgb=",oColor:rgb()
   ?

RETURN NIL

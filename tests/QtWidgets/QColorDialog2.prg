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
   LOCAL oButton

   // create application
   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:resize(640, 480)

   oButton := QPushButton():new("Mostrar janela de diálogo", oWindow)
   oButton:move(20, 20)
   ? oButton:onClicked({||ShowColorDialog(oWindow)})

   oWindow:show()

   // start application
   oApp:exec()

   // delete objects
   oWindow:delete()
   oApp:delete()

RETURN NIL

STATIC FUNCTION ShowColorDialog(oWindow)

   LOCAL oColorDialog

   oColorDialog := QColorDialog():new(oWindow)

   ? oColorDialog:onColorSelected({|oSender, oColor|ShowColorSelected(oColor)})

   oColorDialog:exec()

   ? oColorDialog:onColorSelected()

   // delete object
   oColorDialog:delete()

RETURN NIL

STATIC FUNCTION ShowColorSelected(oColor)

   ? "name=", oColor:name()
   ? "red=", oColor:red()
   ? "green=", oColor:green()
   ? "blue=", oColor:blue()
   ? "rgb=", oColor:rgb()
   ?

RETURN NIL

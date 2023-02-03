/*

  Qt5xHb Project - Test Program

  Copyright (c) 2023 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/magsoftinfo/qt5xhb-v1

*/

#include "qt5xhb.ch"

#ifdef __XHARBOUR__
REQUEST HB_GT_WIN
#endif

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oButton

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:resize( 640, 480 )

   oButton := QPushButton():new( "Mostrar janela de diálogo", oWindow )
   oButton:move( 20, 20 )
   ? oButton:onClicked( {||ShowColorDialog( oWindow )} )

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

STATIC FUNCTION ShowColorDialog( oWindow )

   LOCAL oColorDialog

   oColorDialog := QColorDialog():new( oWindow )

   ? oColorDialog:onColorSelected( {|oSender,oColor|ShowColorSelected( oColor )} )

   oColorDialog:exec()

   ? oColorDialog:onColorSelected()

   oColorDialog:delete()

RETURN NIL

STATIC FUNCTION ShowColorSelected( oColor )

   ? "name=", oColor:name()
   ? "red=", oColor:red()
   ? "green=", oColor:green()
   ? "blue=", oColor:blue()
   ? "rgb=", oColor:rgb()
   ?

RETURN NIL

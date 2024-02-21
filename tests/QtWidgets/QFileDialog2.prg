/*

  Qt5xHb Project - Test Program

  Copyright (c) 2024 Marcos Antonio Gambeta

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
   ? oButton:onClicked( {||dialog( oWindow )} )

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

STATIC FUNCTION dialog( oWindow )

   LOCAL oFileDialog

   oFileDialog := QFileDialog():new( oWindow )

   ? oFileDialog:onFileSelected( {|oSender,cFile|qout( oSender:classname() ), qout( cFile )} )

   oFileDialog:exec()

   ? oFileDialog:onFileSelected()

   oFileDialog:delete()

RETURN NIL

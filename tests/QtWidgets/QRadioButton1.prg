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
   LOCAL oRadioButton1
   LOCAL oRadioButton2

   oApp := QApplication():new()

   oWindow := QWidget():new()

   oRadioButton1 := QRadioButton():new( "RadioButton1", oWindow )
   oRadioButton1:move( 20, 20 )
   ? oRadioButton1:onClicked( {||qout( "1-clicked" )} )
   ? oRadioButton1:onPressed( {||qout( "1-pressed" )} )
   ? oRadioButton1:onReleased( {||qout( "1-released" )} )

   oRadioButton2 := QRadioButton():new( "RadioButton2", oWindow )
   oRadioButton2:move( 20, 70 )
   ? oRadioButton2:onClicked( {||qout( "2-clicked" )} )
   ? oRadioButton2:onPressed( {||qout( "2-pressed" )} )
   ? oRadioButton2:onReleased( {||qout( "2-released" )} )

   oRadioButton1:setChecked( .T. )

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

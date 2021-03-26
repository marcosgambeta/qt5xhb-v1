/*

  Qt5xHb Project - Test Program

  Copyright (C) 2021 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/magsoftinfo/qt5xhb

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
   LOCAL oRadioButton3

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

   oRadioButton3 := QRadioButton():new( "RadioButton3", oWindow )
   oRadioButton3:move( 20, 120 )
   ? oRadioButton3:onClicked( {||qout( "3-clicked" )} )
   ? oRadioButton3:onPressed( {||qout( "3-pressed" )} )
   ? oRadioButton3:onReleased( {||qout( "3-released" )} )

   oRadioButton2:setChecked( .T. )

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

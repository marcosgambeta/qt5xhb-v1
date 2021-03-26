/*

  Qt5xHb Project - Test Program

  Copyright (C) 2021 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/magsoftinfo/qt5xhb

*/

#include "qt5xhb.ch"

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oGroupBox
   LOCAL oRadio1
   LOCAL oRadio2
   LOCAL oRadio3
   LOCAL oVBox

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:resize( 320, 240 )

   oGroupBox := QGroupBox():new( "Radio Buttons", oWindow )

   oRadio1 := QRadioButton():new( "&Radio button 1" )
   oRadio2 := QRadioButton():new( "R&adio button 2" )
   oRadio3 := QRadioButton():new( "Ra&dio button 3" )

   oRadio1:setChecked( .T. )

   oVBox := QVBoxLayout():new()

   oVBox:addWidget( oRadio1 )
   oVBox:addWidget( oRadio2 )
   oVBox:addWidget( oRadio3 )

   oVBox:addStretch( 1 )

   oGroupBox:setLayout( oVBox )

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

/*

  Qt5xHb Project - Test Program

  Copyright (C) 2023 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/magsoftinfo/qt5xhb-v1

*/

#include "qt5xhb.ch"

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oButton1
   LOCAL oButton2
   LOCAL oButton3
   LOCAL oButton4
   LOCAL oButton5
   LOCAL oLayout

   oApp := QApplication():new()

   oWindow := QWidget():new()

   oButton1 := QPushButton():new( "Um" )
   oButton2 := QPushButton():new( "Dois" )
   oButton3 := QPushButton():new( "Três" )
   oButton4 := QPushButton():new( "Quatro" )
   oButton5 := QPushButton():new( "Cinco" )

   oLayout := QVBoxLayout():new()

   oLayout:addWidget( oButton1 )
   oLayout:addWidget( oButton2 )
   oLayout:addWidget( oButton3 )
   oLayout:addWidget( oButton4 )
   oLayout:addWidget( oButton5 )

   oWindow:setLayout( oLayout )

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

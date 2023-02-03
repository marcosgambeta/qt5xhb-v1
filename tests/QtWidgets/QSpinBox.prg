/*

  Qt5xHb Project - Test Program

  Copyright (c) 2023 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/magsoftinfo/qt5xhb-v1

*/

#include "qt5xhb.ch"

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oSpinBox

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle( "Teste" )
   oWindow:resize( 640, 480 )

   oSpinBox := QSpinBox():new( oWindow )
   oSpinBox:move( 20, 20 )
   oSpinBox:setTooltip( "Eu sou um QSpinBox" )

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

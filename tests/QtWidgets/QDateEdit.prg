/*

  Qt5xHb Project - Test Program

  Copyright (C) 2023 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/magsoftinfo/qt5xhb

*/

#include "qt5xhb.ch"

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oDateEdit

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle( "Teste" )
   oWindow:resize( 640, 480 )
   oWindow:show()

   oDateEdit := QDateEdit():new( oWindow )
   oDateEdit:move( 20, 20 )
   oDateEdit:setTooltip( "Eu sou um QDateEdit" )
   oDateEdit:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

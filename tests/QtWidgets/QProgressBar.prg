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
   LOCAL oProgressBar

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle( "Teste" )
   oWindow:resize( 640, 480 )

   oProgressBar := QProgressBar():new( oWindow )
   oProgressBar:move( 20, 20 )
   oProgressBar:setTooltip( "Eu sou um QProgressBar" )
   oProgressBar:setValue( 50 )

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

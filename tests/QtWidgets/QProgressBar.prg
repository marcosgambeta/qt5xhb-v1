/*

  Qt5xHb Project - Test Program

  Copyright (C) 2019 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/Qt5xHb

*/

#include "qt5xhb.ch"

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oProgressBar

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640,480)
   oWindow:show()

   oProgressBar := QProgressBar():new(oWindow)
   oProgressBar:move(20,20)
   oProgressBar:setTooltip("Eu sou um QProgressBar")
   oProgressBar:setValue(50)
   oProgressBar:show()

   oApp:exec()
   
   oWindow:delete()
   
   oApp:delete()

RETURN

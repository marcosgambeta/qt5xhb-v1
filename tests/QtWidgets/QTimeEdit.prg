/*

  Qt5xHb Project - Test Program

  Copyright (C) 2020 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/qt5xhb

*/

#include "qt5xhb.ch"

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oTimeEdit

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640,480)

   oTimeEdit := QTimeEdit():new(oWindow)
   oTimeEdit:move(20,20)
   oTimeEdit:setTooltip("Eu sou um QTimeEdit")

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

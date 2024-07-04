//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

#include "qt5xhb.ch"

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oDateTimeEdit

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640, 480)

   oDateTimeEdit := QDateTimeEdit():new(oWindow)
   oDateTimeEdit:move(20, 20)
   oDateTimeEdit:setTooltip("Eu sou um QDateTimeEdit")

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

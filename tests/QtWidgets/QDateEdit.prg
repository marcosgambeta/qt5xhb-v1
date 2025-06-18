//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oDateEdit

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640, 480)
   oWindow:show()

   oDateEdit := QDateEdit():new(oWindow)
   oDateEdit:move(20, 20)
   oDateEdit:setTooltip("Eu sou um QDateEdit")
   oDateEdit:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN NIL

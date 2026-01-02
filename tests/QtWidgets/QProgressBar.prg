//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oProgressBar

   // create application
   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640, 480)

   oProgressBar := QProgressBar():new(oWindow)
   oProgressBar:move(20, 20)
   oProgressBar:setTooltip("Eu sou um QProgressBar")
   oProgressBar:setValue(50)

   oWindow:show()

   // start application
   oApp:exec()

   // delete objects
   oWindow:delete()
   oApp:delete()

RETURN NIL

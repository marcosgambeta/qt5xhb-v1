//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

FUNCTION Main()

   lOCAL oApp
   LOCAL oWindow

   oApp := QApplication():new()

   oWindow := QMainWindow():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640, 480)

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN NIL

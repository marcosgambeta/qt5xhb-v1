//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oButton

   // create application
   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:resize(640, 480)

   oButton := QPushButton():new("Mostrar janela de diálogo", oWindow)
   oButton:move(20, 20)
   ? oButton:onClicked({||dialog(oWindow)})

   oWindow:show()

   // start application
   oApp:exec()

   // delete objects
   oWindow:delete()
   oApp:delete()

RETURN NIL

STATIC FUNCTION dialog(oWindow)

   LOCAL oFileDialog := QFileDialog():new(oWindow)

   oFileDialog:exec()

   // delete object
   oFileDialog:delete()

RETURN NIL

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

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:resize(640, 480)
   oWindow:show()

   oButton := QPushButton():new("Mostrar janela de di�logo", oWindow)
   oButton:move(20, 20)
   oButton:show()
   ? oButton:onClicked({||dialog(oWindow)})

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN NIL

STATIC FUNCTION dialog(oWindow)

   LOCAL oPrintPreviewDialog

   oPrintPreviewDialog := QPrintPreviewDialog():new(oWindow)

   oPrintPreviewDialog:exec()

   oPrintPreviewDialog:delete()

RETURN NIL

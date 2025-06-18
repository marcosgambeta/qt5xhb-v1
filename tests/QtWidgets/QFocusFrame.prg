//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oLabel
   LOCAL oFocusFrame

   oApp := QApplication():new()

   oWindow := QWidget():new()

   oLabel := QLabel():new("QLabel", oWindow)
   oLabel:move(20, 20)

   oFocusFrame := QFocusFrame():new()
   oFocusFrame:setWidget(oLabel)

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN NIL

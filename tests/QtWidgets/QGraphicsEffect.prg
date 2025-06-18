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

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Test")
   oWindow:resize(640, 480)

   oLabel := QLabel():new("QLabel", oWindow)
   oLabel:move(20, 20)
   oLabel:setFont(QFont():new("Arial Bold", 48))
   oLabel:setGraphicsEffect(QGraphicsDropShadowEffect():new())

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN NIL

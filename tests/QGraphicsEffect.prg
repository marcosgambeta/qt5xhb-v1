/*

  Qt5xHb Project - Test Program

  Copyright (C) 2012-2017 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com
  marcosgambeta AT gmail DOT com

  Website:
  https://github.com/marcosgambeta/Qt5xHb

  Users Groups:
  https://groups.google.com/forum/?hl=pt-BR#!forum/qtxhb    [ENGLISH]
  https://groups.google.com/forum/?hl=pt-BR#!forum/qtxhb-br [PORTUGUESE]

*/

#include "qt5xhb.ch"

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oLabel

   oApp := QApplication():new()

   oWindow := QWidget():new():setWindowTitle("Test"):resize(640,480)

   oLabel := QLabel():new("QLabel",oWindow):move(20,20):setFont(QFont():new("Arial Bold",48))

   oLabel:setGraphicsEffect(QGraphicsDropShadowEffect():new())

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

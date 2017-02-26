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

   lOCAL oApp
   LOCAL oWindow
   LOCAL oLabel
   LOCAL oFocusFrame

   oApp := QApplication():new()

   oWindow := QWidget():new()

   oLabel := QLabel():new("QLabel",oWindow)
   oLabel:move(20,20)

   oFocusFrame := QFocusFrame():new()
   oFocusFrame:setWidget(oLabel)

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

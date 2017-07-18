/*

  Qt5xHb Project - Test Program

  Copyright (C) 2017 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com
  marcosgambeta AT gmail DOT com

  Website:
  https://github.com/marcosgambeta/Qt5xHb

*/

#include "qt5xhb.ch"

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oQuickWidget

   oApp := QApplication():new()

   oQuickWidget := QQuickWidget():new()
   oQuickWidget:setSource(QUrl():fromLocalFile("QQuickWidget.qml"))
   oQuickWidget:show()

   oApp:exec()

   oQuickWidget:delete()

   oApp:delete()

RETURN

/*

  Qt5xHb Project - Test Program

  Copyright (C) 2020 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/qt5xhb

*/

#include "qt5xhb.ch"

PROCEDURE Main()

   LOCAL oApp
   LOCAL oQuickView

   oApp := QApplication():new()

   oQuickView := QQuickView():new()
   oQuickView:setSource(QUrl():fromLocalFile("QQuickView.qml"))
   oQuickView:show()

   oApp:exec()

   oQuickView:delete()

   oApp:delete()

RETURN

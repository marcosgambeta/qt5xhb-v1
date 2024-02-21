/*

  Qt5xHb Project - Test Program

  Copyright (c) 2024 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/magsoftinfo/qt5xhb-v1

*/

#include "qt5xhb.ch"

PROCEDURE Main()

   LOCAL oApp
   LOCAL oQuickView

   oApp := QApplication():new()

   oQuickView := QQuickView():new()
   oQuickView:setSource( QUrl():fromLocalFile( "QQuickView.qml" ) )
   oQuickView:show()

   oApp:exec()

   oQuickView:delete()

   oApp:delete()

RETURN

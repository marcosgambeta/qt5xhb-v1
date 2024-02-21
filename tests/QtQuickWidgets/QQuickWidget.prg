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
   LOCAL oQuickWidget

   oApp := QApplication():new()

   oQuickWidget := QQuickWidget():new()
   oQuickWidget:setSource( QUrl():fromLocalFile( "QQuickWidget.qml" ) )
   oQuickWidget:show()

   oApp:exec()

   oQuickWidget:delete()

   oApp:delete()

RETURN

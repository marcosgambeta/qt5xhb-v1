//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oQuickWidget

   // create application
   oApp := QApplication():new()

   oQuickWidget := QQuickWidget():new()
   oQuickWidget:setSource(QUrl():fromLocalFile("QQuickWidget.qml"))
   oQuickWidget:show()

   // start application
   oApp:exec()

   // delete objects
   oQuickWidget:delete()
   oApp:delete()

RETURN NIL

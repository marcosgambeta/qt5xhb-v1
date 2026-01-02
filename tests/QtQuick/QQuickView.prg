//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oQuickView

   // create application
   oApp := QApplication():new()

   oQuickView := QQuickView():new()
   oQuickView:setSource(QUrl():fromLocalFile("QQuickView.qml"))
   oQuickView:show()

   // start application
   oApp:exec()

   // delete objects
   oQuickView:delete()
   oApp:delete()

RETURN NIL

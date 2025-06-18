//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

#include "qt5xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oQuickView

   oApp := QApplication():new()

   oQuickView := QQuickView():new()
   oQuickView:setSource(QUrl():fromLocalFile("QQuickView.qml"))
   oQuickView:show()

   oApp:exec()

   oQuickView:delete()

   oApp:delete()

RETURN NIL

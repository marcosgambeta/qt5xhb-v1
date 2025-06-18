//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oWebView

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste da classe QWebView")
   oWindow:resize(800, 600)
   oWindow:show()

   oWebView := QWebView():new(oWindow)
   oWebView:setUrl(QUrl():new("https://github.com/magsoftinfo/qt5xhb-v1"))
   oWebView:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN NIL

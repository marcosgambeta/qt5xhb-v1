/*

  Exemplo do projeto Qt5xHb

  Copyright (C) 2012-2017 Marcos Antonio Gambeta

  E-mail: marcosgambeta@uol.com.br

  Website: https://github.com/marcosgambeta/Qt5xHb

  Grupo de usuários: http://br.groups.yahoo.com/neo/groups/qt4xhb/info

*/

#include "qt5xhb.ch"

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oWebView

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste da classe QWebView")
   oWindow:resize(800,600)
   oWindow:show()

   oWebView := QWebView():new(oWindow)
   oWebView:setUrl(QUrl():new("https://github.com/marcosgambeta/Qt5xHb"))
   oWebView:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

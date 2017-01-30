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
   LOCAL oMainWindow
   LOCAL oMdiArea
   LOCAL oMdiSubWindow1
   LOCAL oMdiSubWindow2
   LOCAL oMdiSubWindow3
   LOCAL oMdiSubWindow4

   oApp := QApplication():new()

   oMainWindow := QMainWindow():new()
   oMainWindow:setWindowTitle("Qt5xHb - teste com MDI")
   oMainWindow:resize(800,600)
   oMainWindow:show()

   oMdiArea := QMdiArea():new()
   oMainWindow:setCentralWidget(oMdiArea)

   oMdiSubWindow1 := QMdiSubWindow():new(oMdiArea)
   oMdiSubWindow1:setWindowTitle("Janela 1")
   oMdiSubWindow1:resize(320,240)

   oMdiSubWindow2 := QMdiSubWindow():new(oMdiArea)
   oMdiSubWindow2:setWindowTitle("Janela 2")
   oMdiSubWindow2:resize(320,240)

   oMdiSubWindow3 := QMdiSubWindow():new(oMdiArea)
   oMdiSubWindow3:setWindowTitle("Janela 3")
   oMdiSubWindow3:resize(320,240)

   oMdiSubWindow4 := QMdiSubWindow():new(oMdiArea)
   oMdiSubWindow4:setWindowTitle("Janela 4")
   oMdiSubWindow4:resize(320,240)

   oApp:exec()
   
   oMainWindow:delete()
   
   oApp:delete()

RETURN

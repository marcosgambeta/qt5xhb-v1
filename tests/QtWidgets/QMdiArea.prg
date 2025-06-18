//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

#include "qt5xhb.ch"

FUNCTION Main()

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
   oMainWindow:resize(800, 600)

   oMdiArea := QMdiArea():new()
   oMainWindow:setCentralWidget(oMdiArea)

   oMdiSubWindow1 := QMdiSubWindow():new(oMdiArea)
   oMdiSubWindow1:setWindowTitle("Janela 1")
   oMdiSubWindow1:resize(320, 240)

   oMdiSubWindow2 := QMdiSubWindow():new(oMdiArea)
   oMdiSubWindow2:setWindowTitle("Janela 2")
   oMdiSubWindow2:resize(320, 240)

   oMdiSubWindow3 := QMdiSubWindow():new(oMdiArea)
   oMdiSubWindow3:setWindowTitle("Janela 3")
   oMdiSubWindow3:resize(320, 240)

   oMdiSubWindow4 := QMdiSubWindow():new(oMdiArea)
   oMdiSubWindow4:setWindowTitle("Janela 4")
   oMdiSubWindow4:resize(320, 240)

   oMainWindow:show()

   oApp:exec()

   oMainWindow:delete()

   oApp:delete()

RETURN NIL

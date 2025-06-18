//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oListView
   LOCAL oSLM

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640, 480)

   oListView := QListView():new(oWindow)
   oListView:move(20, 20)
   oListView:setTooltip("Eu sou um QListView")

   oSLM := QStringListModel():new({"um", "dois", "três", "quatro", "cinco", "seis"})

   oListView:setModel(oSLM)

   oWindow:show()

   oApp:exec()

   oSLM:delete()

   oWindow:delete()

   oApp:delete()

RETURN NIL

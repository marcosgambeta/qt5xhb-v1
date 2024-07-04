//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

#include "qt5xhb.ch"

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oFontComboBox

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640, 480)

   oFontComboBox := QFontComboBox():new(oWindow)
   oFontComboBox:move(20, 20)
   oFontComboBox:setTooltip("Eu sou um QFontComboBox")

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

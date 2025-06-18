//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oButton

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:resize(640, 480)

   oButton := QPushButton():new("Mostrar janela de di�logo", oWindow)
   oButton:move(20, 20)
   ? oButton:onClicked({||dialog(oWindow)})

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN NIL

STATIC FUNCTION dialog(oWindow)

   LOCAL oMessageBox
   LOCAL oClickedButton

   oMessageBox := QMessageBox():new(oWindow)

   oMessageBox:addButton(QPushButton():new("Accept")     , QMessageBox_AcceptRole)
   oMessageBox:addButton(QPushButton():new("Reject")     , QMessageBox_RejectRole)
   oMessageBox:addButton(QPushButton():new("Destructive"), QMessageBox_DestructiveRole)
   oMessageBox:addButton(QPushButton():new("Action")     , QMessageBox_ActionRole)
   oMessageBox:addButton(QPushButton():new("Help")       , QMessageBox_HelpRole)
   oMessageBox:addButton(QPushButton():new("Yes")        , QMessageBox_YesRole)
   oMessageBox:addButton(QPushButton():new("No")         , QMessageBox_NoRole)
   oMessageBox:addButton(QPushButton():new("Apply")      , QMessageBox_ApplyRole)
   oMessageBox:addButton(QPushButton():new("Reset")      , QMessageBox_ResetRole)

   oMessageBox:exec()

   oClickedButton := oMessageBox:clickedButton()
   ? oClickedButton:className()
   ? oClickedButton:metaObject():className()
   ? oMessageBox:buttonRole(oClickedButton)

   oMessageBox:delete()

RETURN NIL

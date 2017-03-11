/*

  Qt5xHb Project - Test Program

  Copyright (C) 2012-2017 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com
  marcosgambeta AT gmail DOT com

  Website:
  https://github.com/marcosgambeta/Qt5xHb

  Users Groups:
  https://groups.google.com/forum/?hl=pt-BR#!forum/qtxhb    [ENGLISH]
  https://groups.google.com/forum/?hl=pt-BR#!forum/qtxhb-br [PORTUGUESE]

*/

#include "qt5xhb.ch"

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oButton

   oApp := QApplication():new()

   oWindow := QWidget():new():resize(640,480)

   oButton := QPushButton():new("Mostrar janela de diálogo",oWindow):move(20,20)
   ? oButton:onClicked({||dialog(oWindow)})

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

STATIC FUNCTION dialog (oWindow)

   LOCAL oMessageBox
   LOCAL oClickedButton

   oMessageBox := QMessageBox():new(oWindow)

   oMessageBox:addButton( QPushButton():new("Accept")     , QMessageBox_AcceptRole )
   oMessageBox:addButton( QPushButton():new("Reject")     , QMessageBox_RejectRole )
   oMessageBox:addButton( QPushButton():new("Destructive"), QMessageBox_DestructiveRole )
   oMessageBox:addButton( QPushButton():new("Action")     , QMessageBox_ActionRole )
   oMessageBox:addButton( QPushButton():new("Help")       , QMessageBox_HelpRole )
   oMessageBox:addButton( QPushButton():new("Yes")        , QMessageBox_YesRole )
   oMessageBox:addButton( QPushButton():new("No")         , QMessageBox_NoRole )
   oMessageBox:addButton( QPushButton():new("Apply")      , QMessageBox_ApplyRole )
   oMessageBox:addButton( QPushButton():new("Reset")      , QMessageBox_ResetRole )

   oMessageBox:exec()

   oClickedButton := oMessageBox:clickedButton()
   ? oClickedButton:className()
   ? oClickedButton:metaObject():className()
   ? oMessageBox:buttonRole(oClickedButton)

   oMessageBox:delete()

RETURN NIL

//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

#include "qt5xhb.ch"

#ifdef __XHARBOUR__
REQUEST HB_GT_WIN
#endif

FUNCTION Main()

   LOCAL oApp
   LOCAl oFormBuilder
   LOCAL oFile
   LOCAL oWindow
   LOCAL oPushButton
   LOCAL oCommandLinkButton
   LOCAL oComboBox
   LOCAL oLineEdit
   LOCAL oLCDNumber

   oApp := QApplication():new()

   // aqui carregamos o conte�do do arquivo QFormBuilder.ui,
   // sendo oWindow a janela com os controles

   oFormBuilder := QFormBuilder():new()
   oFile := QFile():new("QFormBuilder.ui")
   oFile:open(QIODevice_ReadOnly)
   oWindow := oFormBuilder:load(oFile)
   oFile:close()
   oFile:delete()
   oFormBuilder:delete()

   // aqui personalizamos os widgets (apar�ncia, a��es e eventos)

   oPushButton := QPushButton():newFrom(oWindow:findChild("pushButton"))
   ? oPushButton:onClicked({||QOut("PushButton clicked")})

   oCommandLinkButton := QCommandLinkButton():newFrom(oWindow:findChild("commandLinkButton"))
   ? oCommandLinkButton:onClicked({||QOut("CommandLinkButton clicked")})
   oCommandLinkButton:setStyleSheet("background-color: yellow")

   oComboBox := QComboBox():newFrom(oWindow:findChild("comboBox"))
   oComboBox:addItem("Item 1")
   oComboBox:addItem("Item 2")
   oComboBox:addItem("Item 3")
   oComboBox:addItem("Item 4")
   oComboBox:addItem("Item 5")

   oLineEdit := QLineEdit():newFrom(oWindow:findChild("lineEdit"))
   oLineEdit:setText("testando QLineEdit")
   ? oLineEdit:onFocusInEvent({||QOut("focusin")})
   ? oLineEdit:onFocusOutEvent({||QOut("focusout")})

   oLCDNumber := QLCDNumber():newFrom(oWindow:findChild("lcdNumber"))
   oLCDNumber:display(1234)

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN NIL

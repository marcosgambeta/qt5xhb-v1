//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

#ifdef __XHARBOUR__
REQUEST HB_GT_WIN
#endif

// request das classes usadas
REQUEST QWidget
REQUEST QPushButton
REQUEST QToolButton
REQUEST QRadioButton
REQUEST QCheckBox
REQUEST QCommandLinkButton
REQUEST QComboBox
REQUEST QFontComboBox
REQUEST QLineEdit
REQUEST QTextEdit
REQUEST QPlainTextEdit
REQUEST QSpinBox
REQUEST QDoubleSpinBox
REQUEST QTimeEdit
REQUEST QDateEdit
REQUEST QDateTimeEdit
REQUEST QDial
REQUEST QLabel
REQUEST QLCDNumber

FUNCTION Main()

   LOCAL oApp
   LOCAl oLoader
   LOCAL oFile
   LOCAL oWindow
   LOCAL oPushButton
   LOCAL oCommandLinkButton
   LOCAL oComboBox
   LOCAL oLineEdit
   LOCAL oLCDNumber

   oApp := QApplication():new()

   // carregamento do arquivo huiloader.ui

   oLoader := HUiLoader():new()
   oFile := QFile():new("HUiLoader.ui")
   oFile:open(QIODevice_ReadOnly)
   oWindow := oLoader:load(oFile)
   oFile:close()
   oFile:delete()
   oLoader:delete()

   // configuracao dos sinais e eventos

   oPushButton := oWindow:findChild("pushButton")
   ? oPushButton:onClicked({||QOut("PushButton clicked")})

   oCommandLinkButton := oWindow:findChild("commandLinkButton")
   ? oCommandLinkButton:onClicked({||QOut("CommandLinkButton clicked")})

   oComboBox := oWindow:findChild("comboBox")

   oLineEdit := oWindow:findChild("lineEdit")
   ? oLineEdit:onFocusInEvent({||QOut("focusin")})
   ? oLineEdit:onFocusOutEvent({||QOut("focusout")})

   oLCDNumber := oWindow:findChild("lcdNumber")

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN NIL

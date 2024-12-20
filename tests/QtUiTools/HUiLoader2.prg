//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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
   LOCAL oWindow
   LOCAL oPushButton
   LOCAL oCommandLinkButton
   LOCAL oComboBox
   LOCAL oLineEdit
   LOCAL oLCDNumber

   oApp := QApplication():new()

   oWindow := loadUI("HUiLoader.ui")

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

STATIC FUNCTION loadUI(cFileName)

   LOCAL oLoader
   LOCAL oFile
   LOCAL oUI

   oLoader := HUiLoader():new()
   oLoader:setCreateWidgetCB({|oWidget|
      ? oWidget:pointer
      ?? " "
      ?? oWidget:className()
      ?? " "
      ?? oWidget:metaObject():className()
      ?? " "
      ?? oWidget:objectName()
      ?? " "
      ?? oWidget:x()
      ?? " "
      ?? oWidget:y()
      ?? " "
      ?? oWidget:width()
      ?? " "
      ?? oWidget:height()
      ?? " "
      ?? oWidget:parent():className()
      ?? " "
      ?? oWidget:parent():metaObject():className()
      ?? " "
      })
   oFile := QFile():new(cFileName)
   oFile:open(QIODevice_ReadOnly)
   oUI := oLoader:load(oFile)
   oFile:close()
   oFile:delete()
   oLoader:delete()

RETURN oUI

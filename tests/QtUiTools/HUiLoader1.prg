/*

  Qt5xHb Project - Test Program

  Copyright (C) 2020 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/qt5xhb

*/

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

PROCEDURE Main()

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
   oFile := QFile():new( "HUiLoader.ui" )
   oFile:open( QIODevice_ReadOnly )
   oWindow := oLoader:load( oFile )
   oFile:close()
   oFile:delete()
   oLoader:delete()

   // configuracao dos sinais e eventos

   oPushButton := oWindow:findChild( "pushButton" )
   ? oPushButton:onClicked( {||qout( "PushButton clicked" )} )

   oCommandLinkButton := oWindow:findChild( "commandLinkButton" )
   ? oCommandLinkButton:onClicked( {||qout( "CommandLinkButton clicked" )} )

   oComboBox := oWindow:findChild( "comboBox" )

   oLineEdit := oWindow:findChild( "lineEdit" )
   ? oLineEdit:onFocusInEvent( {||qout( "focusin" )} )
   ? oLineEdit:onFocusOutEvent( {||qout( "focusout" )} )

   oLCDNumber := oWindow:findChild( "lcdNumber" )

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

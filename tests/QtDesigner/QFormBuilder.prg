/*

  Qt5xHb Project - Test Program

  Copyright (C) 2022 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/magsoftinfo/qt5xhb

*/

#include "qt5xhb.ch"

#ifdef __XHARBOUR__
REQUEST HB_GT_WIN
#endif

PROCEDURE Main()

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

   // aqui carregamos o conteúdo do arquivo QFormBuilder.ui,
   // sendo oWindow a janela com os controles

   oFormBuilder := QFormBuilder():new()
   oFile := QFile():new( "QFormBuilder.ui" )
   oFile:open( QIODevice_ReadOnly )
   oWindow := oFormBuilder:load( oFile )
   oFile:close()
   oFile:delete()
   oFormBuilder:delete()

   // aqui personalizamos os widgets (aparência, ações e eventos)

   oPushButton := QPushButton():newFrom( oWindow:findChild( "pushButton" ) )
   ? oPushButton:onClicked( {||qout( "PushButton clicked" )} )

   oCommandLinkButton := QCommandLinkButton():newFrom( oWindow:findChild( "commandLinkButton" ) )
   ? oCommandLinkButton:onClicked( {||qout( "CommandLinkButton clicked" )} )
   oCommandLinkButton:setStyleSheet( "background-color: yellow" )

   oComboBox := QComboBox():newFrom( oWindow:findChild( "comboBox" ) )
   oComboBox:addItem( "Item 1" )
   oComboBox:addItem( "Item 2" )
   oComboBox:addItem( "Item 3" )
   oComboBox:addItem( "Item 4" )
   oComboBox:addItem( "Item 5" )

   oLineEdit := QLineEdit():newFrom( oWindow:findChild( "lineEdit" ) )
   oLineEdit:setText( "testando QLineEdit" )
   ? oLineEdit:onFocusInEvent( {||qout( "focusin" )} )
   ? oLineEdit:onFocusOutEvent( {||qout( "focusout" )} )

   oLCDNumber := QLCDNumber():newFrom( oWindow:findChild( "lcdNumber" ) )
   oLCDNumber:display( 1234 )

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

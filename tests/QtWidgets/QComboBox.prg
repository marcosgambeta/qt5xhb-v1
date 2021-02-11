/*

  Qt5xHb Project - Test Program

  Copyright (C) 2021 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/qt5xhb

*/

#include "qt5xhb.ch"

#ifdef __XHARBOUR__
REQUEST HB_GT_WIN
#endif

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oComboBox

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle( "Teste" )
   oWindow:resize( 640, 480 )

   oComboBox := QComboBox():new( oWindow )
   oComboBox:move( 20, 20 )
   oComboBox:setTooltip( "Eu sou um QComboBox" )

   oComboBox:addItem( "Item 1" )
   oComboBox:addItem( "Item 2" )
   oComboBox:addItem( "Item 3" )
   oComboBox:addItem( "Item 4" )
   oComboBox:addItem( "Item 5" )

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

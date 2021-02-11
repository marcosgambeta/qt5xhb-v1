/*

  Qt5xHb Project - Test Program

  Copyright (C) 2021 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/qt5xhb

*/

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oAxWidget

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle( "Teste" )
   oWindow:resize( 800, 600 )

   oAxWidget := QAxWidget():new( "Shell.Explorer.2", oWindow )
   oAxWidget:move( 10, 10 )
   oAxWidget:resize( 1024 - 20, 768 - 20 )
   oAxWidget:dynamiccall( "Navigate(const QString&)", QVariant():new( "https://github.com/marcosgambeta/qt5xhb" ) )

   oWindow:onResizeEvent({||oAxWidget:resize(oWindow:width()-20,oWindow:height()-20)})

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

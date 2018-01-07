/*

  Qt5xHb Project - Test Program

  Copyright (C) 2018 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/Qt5xHb

*/

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oAxWidget

   oApp := QApplication():new()

   oWindow := QWidget():new():setWindowTitle("Teste"):resize(800,600)

   oAxWidget := QAxWidget():new("Shell.Explorer.2",oWindow):move(10,10):resize(1024-20,768-20)
   oAxWidget:dynamiccall("Navigate(const QString&)",QVariant():new("https://github.com/marcosgambeta/Qt5xHb"))

   oWindow:onResizeEvent({||oAxWidget:resize(oWindow:width()-20,oWindow:height()-20)})

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

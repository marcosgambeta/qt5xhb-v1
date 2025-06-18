//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oAxWidget

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(800, 600)

   oAxWidget := QAxWidget():new("Shell.Explorer.2", oWindow)
   oAxWidget:move(10, 10)
   oAxWidget:resize(1024 - 20, 768 - 20)
   oAxWidget:dynamiccall("Navigate(const QString&)", QVariant():new("https://github.com/magsoftinfo/qt5xhb-v1"))

   oWindow:onResizeEvent({||oAxWidget:resize(oWindow:width() - 20, oWindow:height() - 20)})

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN NIL

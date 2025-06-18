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
   LOCAL oWindow
   LOCAL oShortcut1
   LOCAL oShortcut2
   LOCAL oShortcut3
   LOCAL oShortcut4
   LOCAL oShortcut5
   LOCAL oShortcut6
   LOCAL oShortcut7
   LOCAL oShortcut8
   LOCAL oShortcut9

   oApp := QApplication():new()

   oWindow := QMainWindow():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640, 480)

   oShortcut1 := QShortcut():new(QKeySequence():new("F1"), oWindow)
   ? oShortcut1:onActivated({||QOut("F1 pressionado")})

   oShortcut2 := QShortcut():new(QKeySequence():new("F2"), oWindow)
   ? oShortcut2:onActivated({||QOut("F2 pressionado")})

   oShortcut3 := QShortcut():new(QKeySequence():new("F3"), oWindow)
   ? oShortcut3:onActivated({||QOut("F3 pressionado")})

   oShortcut4 := QShortcut():new(QKeySequence():new("CTRL+F1"), oWindow)
   ? oShortcut4:onActivated({||QOut("CTRL+F1 pressionado")})

   oShortcut5 := QShortcut():new(QKeySequence():new("CTRL+F2"), oWindow)
   ? oShortcut5:onActivated({||QOut("CTRL+F2 pressionado")})

   oShortcut6 := QShortcut():new(QKeySequence():new("CTRL+F3"), oWindow)
   ? oShortcut6:onActivated({||QOut("CTRL+F3 pressionado")})

   oShortcut7 := QShortcut():new(QKeySequence():new("ALT+F1"), oWindow)
   ? oShortcut7:onActivated({||QOut("ALT+F1 pressionado")})

   oShortcut8 := QShortcut():new(QKeySequence():new("ALT+F2"), oWindow)
   ? oShortcut8:onActivated({||QOut("ALT+F2 pressionado")})

   oShortcut9 := QShortcut():new(QKeySequence():new("ALT+F3"), oWindow)
   ? oShortcut9:onActivated({||QOut("ALT+F3 pressionado")})

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN NIL

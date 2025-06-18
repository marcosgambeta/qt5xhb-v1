//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

#ifdef __XHARBOUR__
REQUEST HB_GT_WIN
#endif

FUNCTION Main()

   LOCAL oApp
   LOCAL oMainWindow
   LOCAL oMenuBar
   LOCAL oMenuA
   LOCAL oActionA1
   LOCAL oActionA2
   LOCAL oActionA3
   LOCAL oActionA4
   LOCAL oMenuB
   LOCAL oActionB1
   LOCAL oActionB2
   LOCAL oActionB3
   LOCAL oMenuC
   LOCAL oActionC1
   LOCAL oActionC2
   LOCAL oMenuD
   LOCAL oActionD1

   oApp := QApplication():new()

   oMainWindow := QMainWindow():new()
   oMainWindow:setWindowTitle("Testando classes QMainWindow, QMenu, QMenuBar e QAction")
   oMainWindow:resize(640, 480)

   oMenuBar := oMainWindow:menuBar()

   oMenuA := oMenuBar:addMenu("Menu&A")

   oActionA1 := oMenuA:addAction("Option 1")
   ? oActionA1:onTriggered({||QOut("Menu A/Option 1")})

   oActionA2 := oMenuA:addAction("Option 2")
   ? oActionA2:onTriggered({||QOut("Menu A/Option 2")})

   oActionA3 := oMenuA:addAction("Option 3")
   ? oActionA3:onTriggered({||QOut("Menu A/Option 3")})

   oActionA4 := oMenuA:addAction("Option 4")
   ? oActionA4:onTriggered({||QOut("Menu A/Option 4")})

   oMenuB := oMenuBar:addMenu("Menu&B")

   oActionB1 := oMenuB:addAction("Option 1")
   ? oActionB1:onTriggered({||QOut("Menu B/Option 1")})

   oActionB2 := oMenuB:addAction("Option 2")
   ? oActionB2:onTriggered({||QOut("Menu B/Option 2")})

   oActionB3 := oMenuB:addAction("Option 3")
   ? oActionB3:onTriggered({||QOut("Menu B/Option 3")})

   oMenuC := oMenuBar:addMenu("Menu&C")

   oActionC1 := oMenuC:addAction("Option 1")
   ? oActionC1:onTriggered({||QOut("Menu C/Option 1")})

   oActionC2 := oMenuC:addAction("Option 2")
   ? oActionC2:onTriggered({||QOut("Menu C/Option 2")})

   oMenuD := oMenuBar:addMenu("Menu&D")

   oActionD1 := oMenuD:addAction("Option 1")
   ? oActionD1:onTriggered({||QOut("Menu D/Option 1")})

   oMainWindow:Show()

   oApp:exec()

   oMainWindow:delete()

   oApp:delete()

RETURN NIL

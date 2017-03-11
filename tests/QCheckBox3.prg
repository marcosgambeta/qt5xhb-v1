/*

  Qt5xHb Project - Test Program

  Copyright (C) 2012-2017 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com
  marcosgambeta AT gmail DOT com

  Website:
  https://github.com/marcosgambeta/Qt5xHb

  Users Groups:
  https://groups.google.com/forum/?hl=pt-BR#!forum/qtxhb    [ENGLISH]
  https://groups.google.com/forum/?hl=pt-BR#!forum/qtxhb-br [PORTUGUESE]

*/

#include "qt5xhb.ch"

#ifdef __XHARBOUR__
REQUEST HB_GT_WIN
#endif

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oCheckBox1
   LOCAL oCheckBox2
   LOCAL oCheckBox3

   oApp := QApplication():new()

   oWindow := QWidget():new()

   oCheckBox1 := QCheckBox():new("CheckBox1",oWindow)
   oCheckBox1:move(20,20)
   ? oCheckBox1:onClicked({||qout("1-clicked")})
   ? oCheckBox1:onPressed({||qout("1-pressed")})
   ? oCheckBox1:onReleased({||qout("1-released")})
   ? oCheckBox1:onStateChanged({||qout("1-stateChanged="+alltrim(str(oCheckBox1:checkState())))})

   oCheckBox2 := QCheckBox():new("CheckBox2",oWindow)
   oCheckBox2:move(20,70)
   ? oCheckBox2:onClicked({||qout("2-clicked")})
   ? oCheckBox2:onPressed({||qout("2-pressed")})
   ? oCheckBox2:onReleased({||qout("2-released")})
   ? oCheckBox2:onStateChanged({||qout("2-stateChanged="+alltrim(str(oCheckBox2:checkState())))})

   oCheckBox3 := QCheckBox():new("CheckBox3",oWindow)
   oCheckBox3:move(20,120)
   ? oCheckBox3:onClicked({||qout("3-clicked")})
   ? oCheckBox3:onPressed({||qout("3-pressed")})
   ? oCheckBox3:onReleased({||qout("3-released")})
   ? oCheckBox3:onStateChanged({||qout("3-stateChanged="+alltrim(str(oCheckBox3:checkState())))})

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

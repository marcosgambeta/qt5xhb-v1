/*

  Qt5xHb Project - Test Program

  Copyright (C) 2020 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/Qt5xHb

*/

#include "qt5xhb.ch"

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oLabel1
   LOCAL oLineEdit1
   LOCAL oLabel2
   LOCAL oLineEdit2
   LOCAL oLabel3
   LOCAL oLineEdit3

   oApp := QApplication():new()

   oWindow := QWidget():new():setWindowTitle("Teste"):resize(640,480)

   oLabel1 := QLabel():new("&Nome",oWindow):move(20,20)
   oLineEdit1 := QLineEdit():new(oWindow):move(120,20)

   oLabel2 := QLabel():new("&Idade",oWindow):move(20,120)
   oLineEdit2 := QLineEdit():new(oWindow):move(120,120)

   oLabel3 := QLabel():new("&Telefone",oWindow):move(20,220)
   oLineEdit3 := QLineEdit():new(oWindow):move(120,220)

   o1 := olabel1:buddy()
   ? valtype(o1)
   ? o1:className()
   ? o1:pointer

   oLabel1:setBuddy(oLineEdit1) // ALT-N move foco para oLineEdit1
   oLabel2:setBuddy(oLineEdit2) // ALT-I move foco para oLineEdit2
   oLabel3:setBuddy(oLineEdit3) // ALT-T move foco para oLineEdit3

   ?
   o1 := olabel1:buddy()
   ? valtype(o1)
   ? o1:className()
   ? o1:pointer

   ?
   o2 := olabel2:buddy()
   ? valtype(o2)
   ? o2:className()
   ? o2:pointer

   ?
   o3 := olabel3:buddy()
   ? valtype(o3)
   ? o3:className()
   ? o3:pointer

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

/*

  Exemplo do projeto Qt5xHb

  Copyright (C) 2012-2017 Marcos Antonio Gambeta

  E-mail: marcosgambeta@uol.com.br

  Website: https://github.com/marcosgambeta/Qt5xHb

  Grupo de usuários: http://br.groups.yahoo.com/neo/groups/qt4xhb/info

*/

#include "qt5xhb.ch"

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oGroupBox
   LOCAL oRadio1
   LOCAL oRadio2
   LOCAL oRadio3
   LOCAL oVBox

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:resize(320,240)

   oGroupBox := QGroupBox():new("Radio Buttons",oWindow)

   oRadio1 := QRadioButton():new("&Radio button 1")
   oRadio2 := QRadioButton():new("R&adio button 2")
   oRadio3 := QRadioButton():new("Ra&dio button 3")

   oRadio1:setChecked(.t.)

   oVBox := QVBoxLayout():new()

   oVBox:addWidget(oRadio1)
   oVBox:addWidget(oRadio2)
   oVBox:addWidget(oRadio3)

   oVBox:addStretch(1)

   oGroupBox:setLayout(oVBox)

   oWindow:show()

   oApp:exec()
   
   oWindow:delete()
   
   oApp:delete()

RETURN

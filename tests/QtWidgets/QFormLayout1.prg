/*

  Qt5xHb Project - Test Program

  Copyright (C) 2020 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/qt5xhb

*/

#include "qt5xhb.ch"

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oLabelField1
   LOCAL oLabelField2
   LOCAL oLabelField3
   LOCAL oLabelField4
   LOCAL oLabelField5
   LOCAL oEditField1
   LOCAL oEditField2
   LOCAL oEditField3
   LOCAL oEditField4
   LOCAL oEditField5
   LOCAL oLayout

   oApp := QApplication():new()

   oWindow := QWidget():new()

   oLabelField1 := QLabel():new("Campo 1")
   oLabelField2 := QLabel():new("Campo 2")
   oLabelField3 := QLabel():new("Campo 3")
   oLabelField4 := QLabel():new("Campo 4")
   oLabelField5 := QLabel():new("Campo 5")

   oEditField1 := QLineEdit():new("")
   oEditField2 := QLineEdit():new("")
   oEditField3 := QLineEdit():new("")
   oEditField4 := QLineEdit():new("")
   oEditField5 := QLineEdit():new("")

   oLayout := QFormLayout():new()

   oLayout:addRow(oLabelField1,oEditField1)
   oLayout:addRow(oLabelField2,oEditField2)
   oLayout:addRow(oLabelField3,oEditField3)
   oLayout:addRow(oLabelField4,oEditField4)
   oLayout:addRow(oLabelField5,oEditField5)

   oWindow:setLayout(oLayout)

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

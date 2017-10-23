/*

  Qt5xHb Project - Test Program

  Copyright (C) 2017 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/Qt5xHb

*/

#include "qt5xhb.ch"

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oWindow
   // objetos do QFormLayout A
   LOCAL oFormLayoutA
   LOCAL oLabelA1
   LOCAL oLabelA2
   LOCAL oLabelA3
   LOCAL oLabelA4
   LOCAL oLabelA5
   LOCAL oEditA1
   LOCAL oEditA2
   LOCAL oEditA3
   LOCAL oEditA4
   LOCAL oEditA5
   // objetos do QFormLayout B
   LOCAL oFormLayoutB
   LOCAL oLabelB1
   LOCAL oLabelB2
   LOCAL oLabelB3
   LOCAL oLabelB4
   LOCAL oLabelB5
   LOCAL oEditB1
   LOCAL oEditB2
   LOCAL oEditB3
   LOCAL oEditB4
   LOCAL oEditB5
   // layout horizontal
   LOCAL oLayout

   oApp := QApplication():new()

   oWindow := QWidget():new()

   // montagem do objeto oFormLayoutA

   oFormLayoutA := QFormLayout():new()

   oLabelA1 := QLabel():new("Campo A1")
   oLabelA2 := QLabel():new("Campo A2")
   oLabelA3 := QLabel():new("Campo A3")
   oLabelA4 := QLabel():new("Campo A4")
   oLabelA5 := QLabel():new("Campo A5")

   oEditA1 := QLineEdit():new("")
   oEditA2 := QLineEdit():new("")
   oEditA3 := QLineEdit():new("")
   oEditA4 := QLineEdit():new("")
   oEditA5 := QLineEdit():new("")

   oFormLayoutA:addRow(oLabelA1,oEditA1)
   oFormLayoutA:addRow(oLabelA2,oEditA2)
   oFormLayoutA:addRow(oLabelA3,oEditA3)
   oFormLayoutA:addRow(oLabelA4,oEditA4)
   oFormLayoutA:addRow(oLabelA5,oEditA5)

   // montagem do objeto oFormLayoutB

   oFormLayoutB := QFormLayout():new()

   oLabelB1 := QLabel():new("Campo B1")
   oLabelB2 := QLabel():new("Campo B2")
   oLabelB3 := QLabel():new("Campo B3")
   oLabelB4 := QLabel():new("Campo B4")
   oLabelB5 := QLabel():new("Campo B5")

   oEditB1 := QLineEdit():new("")
   oEditB2 := QLineEdit():new("")
   oEditB3 := QLineEdit():new("")
   oEditB4 := QLineEdit():new("")
   oEditB5 := QLineEdit():new("")

   oFormLayoutB:addRow(oLabelB1,oEditB1)
   oFormLayoutB:addRow(oLabelB2,oEditB2)
   oFormLayoutB:addRow(oLabelB3,oEditB3)
   oFormLayoutB:addRow(oLabelB4,oEditB4)
   oFormLayoutB:addRow(oLabelB5,oEditB5)

   // montagem do layout horizontal

   oLayout := QHBoxLayout():new()
   oLayout:addLayout(oFormLayoutA)
   oLayout:addLayout(oFormLayoutB)

   // ligação do layout horizontal com a janela

   oWindow:setLayout(oLayout)

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

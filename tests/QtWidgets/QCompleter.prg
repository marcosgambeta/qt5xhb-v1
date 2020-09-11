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
   LOCAL oCompleter
   LOCAL oLineEdit
   LOCAL aDados

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste com a classe QCompleter")
   oWindow:resize(640,480)

   // array de strings
   aDados := {}
   aadd(aDados, "Marcia")
   aadd(aDados, "Marcelo")
   aadd(aDados, "Marcelino")
   aadd(aDados, "Marcos")
   aadd(aDados, "Marcolino")
   aadd(aDados, "Maria")
   aadd(aDados, "Margarida")
   aadd(aDados, "Mario")
   aadd(aDados, "Maristela")

   // cria o objeto QCompleter usando a array como fonte de dados
   oCompleter := QCompleter():new(aDados,oWindow)
   oCompleter:setCaseSensitivity(Qt_CaseInsensitive)

   // cria o objeto QLineEdit, ligado ao objeto QCompleter
   oLineEdit := QLineEdit():new(oWindow)
   oLineEdit:move(10,10)
   oLineEdit:resize(200,20)
   oLineEdit:setCompleter(oCompleter)

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

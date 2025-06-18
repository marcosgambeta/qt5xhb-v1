//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

#include "qt5xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oCompleter
   LOCAL oLineEdit
   LOCAL aDados

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste com a classe QCompleter")
   oWindow:resize(640, 480)

   // array de strings
   aDados := {}
   AAdd(aDados, "Marcia")
   AAdd(aDados, "Marcelo")
   AAdd(aDados, "Marcelino")
   AAdd(aDados, "Marcos")
   AAdd(aDados, "Marcolino")
   AAdd(aDados, "Maria")
   AAdd(aDados, "Margarida")
   AAdd(aDados, "Mario")
   AAdd(aDados, "Maristela")

   // cria o objeto QCompleter usando a array como fonte de dados
   oCompleter := QCompleter():new(aDados, oWindow)
   oCompleter:setCaseSensitivity(Qt_CaseInsensitive)

   // cria o objeto QLineEdit, ligado ao objeto QCompleter
   oLineEdit := QLineEdit():new(oWindow)
   oLineEdit:move(10, 10)
   oLineEdit:resize(200, 20)
   oLineEdit:setCompleter(oCompleter)

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN NIL

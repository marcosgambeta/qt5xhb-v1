//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// ATENÇÂO: por causa de diferenças entre Harbour e xHarbour, este exemplo
// contém linhas de programação específicas, conforme o projeto utilizado.

#include "qt5xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oButton

   // create application
   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640, 480)

   oButton := QPushButton():new("Diálogo", oWindow)
   oButton:move(20, 20)
   ? oButton:onClicked({||dialogo(oWindow)})

   oWindow:show()

   // start application
   oApp:exec()

   // delete objects
   oWindow:delete()
   oApp:delete()

RETURN NIL

STATIC FUNCTION dialogo(oParent)

   LOCAL oDialog
   LOCAL oCBValidator1
   LOCAL oLineEdit1
   LOCAL oLabel1
   LOCAL oCBValidator2
   LOCAL oLineEdit2
   LOCAL oLabel2

   oDialog := QDialog():new(oParent)
   oDialog:setWindowTitle("Diálogo")
   oDialog:resize(320, 240)

   // aceita apenas letras e espaços
   // acentos são removidos
   // as letras são convertidas para maiúsculo
   // campo não deve ser vazio
   #ifdef __XHARBOUR__
   oCBValidator1 := HCodeBlockValidator():new(<|cString, nPos|
      LOCAL nState
      cString := removeacentos(cString)
      cString := upper(cString)
      nState := iif(substr(cString, nPos, 1) $ "ABCDEFGHIJKLMNOPQRSTUVWXYZ ", QValidator_Acceptable, QValidator_Invalid)
      nState := iif(empty(cString), QValidator_Intermediate, nState)
      RETURN {cString, nPos, nState}
      >, oDialog)
   #else
   oCBValidator1 := HCodeBlockValidator():new({|cString, nPos|
      LOCAL nState
      cString := removeacentos(cString)
      cString := upper(cString)
      nState := iif(substr(cString, nPos, 1) $ "ABCDEFGHIJKLMNOPQRSTUVWXYZ ", QValidator_Acceptable, QValidator_Invalid)
      nState := iif(empty(cString), QValidator_Intermediate, nState)
      RETURN {cString, nPos, nState}
      }, oDialog)
   #endif
   oLineEdit1 := QLineEdit():new(oDialog)
   oLineEdit1:move(10, 10)
   oLineEdit1:setValidator(oCBValidator1)
   oLabel1 := QLabel():new(oDialog)
   oLabel1:move(200, 10)
   oLabel1:resize(40, 30)
   ? oLineEdit1:onFocusOutEvent({||oLabel1:setText(iif(oLineEdit1:hasAcceptableInput(), ".T.", ".F."))})

   // aceita apenas numeros
   // campo não deve ser vazio
   #ifdef __XHARBOUR__
   oCBValidator2 := HCodeBlockValidator():new(<|cString, nPos|
      LOCAL nState
      nState := iif(substr(cString, nPos, 1) $ "0123456789" .OR. nPos == 0, QValidator_Acceptable, QValidator_Invalid)
      nState := iif(empty(cString), QValidator_Intermediate, nState)
      RETURN {cString, nPos, nState}
      >, oDialog)
   #else
   oCBValidator2 := HCodeBlockValidator():new({|cString, nPos|
      LOCAL nState
      nState := iif(substr(cString, nPos, 1) $ "0123456789" .OR. nPos == 0, QValidator_Acceptable, QValidator_Invalid)
      nState := iif(empty(cString), QValidator_Intermediate, nState)
      RETURN {cString, nPos, nState}
      }, oDialog)
   #endif
   oLineEdit2 := QLineEdit():new(oDialog)
   oLineEdit2:move(10, 50)
   oLineEdit2:setValidator(oCBValidator2)
   oLabel2 := QLabel():new(oDialog)
   oLabel2:move(200, 50)
   oLabel2:resize(40, 30)
   ? oLineEdit2:onFocusOutEvent({||oLabel2:setText(iif(oLineEdit2:hasAcceptableInput(), ".T.", ".F."))})

   oDialog:exec()

   ? oLineEdit1:onFocusOutEvent()
   ? oLineEdit2:onFocusOutEvent()

   // delete objects
   oDialog:delete()

RETURN NIL

STATIC FUNCTION RemoveAcentos(cTexto)

   // acento agudo
   cTexto := strtran(cTexto, "á", "a")
   cTexto := strtran(cTexto, "é", "e")
   cTexto := strtran(cTexto, "í", "i")
   cTexto := strtran(cTexto, "ó", "o")
   cTexto := strtran(cTexto, "ú", "u")
   cTexto := strtran(cTexto, "Á", "A")
   cTexto := strtran(cTexto, "É", "E")
   cTexto := strtran(cTexto, "Í", "I")
   cTexto := strtran(cTexto, "Ó", "O")
   cTexto := strtran(cTexto, "Ú", "U")
   // acento circunflexo
   cTexto := strtran(cTexto, "â", "a")
   cTexto := strtran(cTexto, "ê", "e")
   cTexto := strtran(cTexto, "î", "i")
   cTexto := strtran(cTexto, "ô", "o")
   cTexto := strtran(cTexto, "û", "u")
   cTexto := strtran(cTexto, "Â", "A")
   cTexto := strtran(cTexto, "Ê", "E")
   cTexto := strtran(cTexto, "Î", "I")
   cTexto := strtran(cTexto, "Ô", "O")
   cTexto := strtran(cTexto, "Û", "U")
   // til
   cTexto := strtran(cTexto, "ã", "a")
   cTexto := strtran(cTexto, "õ", "o")
   cTexto := strtran(cTexto, "Ã", "A")
   cTexto := strtran(cTexto, "Õ", "O")
   // ce-cedilha
   cTexto := strtran(cTexto, "ç", "c")
   cTexto := strtran(cTexto, "Ç", "C")
   // trema
   cTexto := strtran(cTexto, "ü", "u")
   cTexto := strtran(cTexto, "Ü", "U")
   // crase
   cTexto := strtran(cTexto, "à", "a")
   cTexto := strtran(cTexto, "è", "e")
   cTexto := strtran(cTexto, "ì", "i")
   cTexto := strtran(cTexto, "ò", "o")
   cTexto := strtran(cTexto, "ù", "u")
   cTexto := strtran(cTexto, "À", "A")
   cTexto := strtran(cTexto, "È", "E")
   cTexto := strtran(cTexto, "Ì", "I")
   cTexto := strtran(cTexto, "Ò", "O")
   cTexto := strtran(cTexto, "Ù", "U")

RETURN cTexto

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
      cString := Upper(cString)
      nState := IIf(SubStr(cString, nPos, 1) $ "ABCDEFGHIJKLMNOPQRSTUVWXYZ ", QValidator_Acceptable, QValidator_Invalid)
      nState := IIf(Empty(cString), QValidator_Intermediate, nState)
      RETURN {cString, nPos, nState}
      >, oDialog)
   #else
   oCBValidator1 := HCodeBlockValidator():new({|cString, nPos|
      LOCAL nState
      cString := removeacentos(cString)
      cString := Upper(cString)
      nState := IIf(SubStr(cString, nPos, 1) $ "ABCDEFGHIJKLMNOPQRSTUVWXYZ ", QValidator_Acceptable, QValidator_Invalid)
      nState := IIf(Empty(cString), QValidator_Intermediate, nState)
      RETURN {cString, nPos, nState}
      }, oDialog)
   #endif
   oLineEdit1 := QLineEdit():new(oDialog)
   oLineEdit1:move(10, 10)
   oLineEdit1:setValidator(oCBValidator1)
   oLabel1 := QLabel():new(oDialog)
   oLabel1:move(200, 10)
   oLabel1:resize(40, 30)
   ? oLineEdit1:onFocusOutEvent({||oLabel1:setText(IIf(oLineEdit1:hasAcceptableInput(), ".T.", ".F."))})

   // aceita apenas numeros
   // campo não deve ser vazio
   #ifdef __XHARBOUR__
   oCBValidator2 := HCodeBlockValidator():new(<|cString, nPos|
      LOCAL nState
      nState := IIf(SubStr(cString, nPos, 1) $ "0123456789" .OR. nPos == 0, QValidator_Acceptable, QValidator_Invalid)
      nState := IIf(Empty(cString), QValidator_Intermediate, nState)
      RETURN {cString, nPos, nState}
      >, oDialog)
   #else
   oCBValidator2 := HCodeBlockValidator():new({|cString, nPos|
      LOCAL nState
      nState := IIf(SubStr(cString, nPos, 1) $ "0123456789" .OR. nPos == 0, QValidator_Acceptable, QValidator_Invalid)
      nState := IIf(Empty(cString), QValidator_Intermediate, nState)
      RETURN {cString, nPos, nState}
      }, oDialog)
   #endif
   oLineEdit2 := QLineEdit():new(oDialog)
   oLineEdit2:move(10, 50)
   oLineEdit2:setValidator(oCBValidator2)
   oLabel2 := QLabel():new(oDialog)
   oLabel2:move(200, 50)
   oLabel2:resize(40, 30)
   ? oLineEdit2:onFocusOutEvent({||oLabel2:setText(IIf(oLineEdit2:hasAcceptableInput(), ".T.", ".F."))})

   oDialog:exec()

   ? oLineEdit1:onFocusOutEvent()
   ? oLineEdit2:onFocusOutEvent()

   // delete objects
   oDialog:delete()

RETURN NIL

STATIC FUNCTION RemoveAcentos(cTexto)

   // acento agudo
   cTexto := StrTran(cTexto, "á", "a")
   cTexto := StrTran(cTexto, "é", "e")
   cTexto := StrTran(cTexto, "í", "i")
   cTexto := StrTran(cTexto, "ó", "o")
   cTexto := StrTran(cTexto, "ú", "u")
   cTexto := StrTran(cTexto, "Á", "A")
   cTexto := StrTran(cTexto, "É", "E")
   cTexto := StrTran(cTexto, "Í", "I")
   cTexto := StrTran(cTexto, "Ó", "O")
   cTexto := StrTran(cTexto, "Ú", "U")
   // acento circunflexo
   cTexto := StrTran(cTexto, "â", "a")
   cTexto := StrTran(cTexto, "ê", "e")
   cTexto := StrTran(cTexto, "î", "i")
   cTexto := StrTran(cTexto, "ô", "o")
   cTexto := StrTran(cTexto, "û", "u")
   cTexto := StrTran(cTexto, "Â", "A")
   cTexto := StrTran(cTexto, "Ê", "E")
   cTexto := StrTran(cTexto, "Î", "I")
   cTexto := StrTran(cTexto, "Ô", "O")
   cTexto := StrTran(cTexto, "Û", "U")
   // til
   cTexto := StrTran(cTexto, "ã", "a")
   cTexto := StrTran(cTexto, "õ", "o")
   cTexto := StrTran(cTexto, "Ã", "A")
   cTexto := StrTran(cTexto, "Õ", "O")
   // ce-cedilha
   cTexto := StrTran(cTexto, "ç", "c")
   cTexto := StrTran(cTexto, "Ç", "C")
   // trema
   cTexto := StrTran(cTexto, "ü", "u")
   cTexto := StrTran(cTexto, "Ü", "U")
   // crase
   cTexto := StrTran(cTexto, "à", "a")
   cTexto := StrTran(cTexto, "è", "e")
   cTexto := StrTran(cTexto, "ì", "i")
   cTexto := StrTran(cTexto, "ò", "o")
   cTexto := StrTran(cTexto, "ù", "u")
   cTexto := StrTran(cTexto, "À", "A")
   cTexto := StrTran(cTexto, "È", "E")
   cTexto := StrTran(cTexto, "Ì", "I")
   cTexto := StrTran(cTexto, "Ò", "O")
   cTexto := StrTran(cTexto, "Ù", "U")

RETURN cTexto

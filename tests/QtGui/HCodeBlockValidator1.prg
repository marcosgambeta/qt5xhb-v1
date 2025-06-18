//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// ATEN��O: por causa de diferen�as entre Harbour e xHarbour, este exemplo
// cont�m linhas de programa��o espec�ficas, conforme o projeto utilizado.

#include "qt5xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oButton

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640, 480)

   oButton := QPushButton():new("Di�logo", oWindow)
   oButton:move(20, 20)
   ? oButton:onClicked({||dialogo(oWindow)})

   oWindow:show()

   oApp:exec()

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
   oDialog:setWindowTitle("Di�logo")
   oDialog:resize(320, 240)

   // aceita apenas letras e espa�os
   // acentos s�o removidos
   // as letras s�o convertidas para mai�sculo
   // campo n�o deve ser vazio
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
   // campo n�o deve ser vazio
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

   oDialog:delete()

RETURN NIL

STATIC FUNCTION RemoveAcentos(cTexto)

   // acento agudo
   cTexto := StrTran(cTexto, "�", "a")
   cTexto := StrTran(cTexto, "�", "e")
   cTexto := StrTran(cTexto, "�", "i")
   cTexto := StrTran(cTexto, "�", "o")
   cTexto := StrTran(cTexto, "�", "u")
   cTexto := StrTran(cTexto, "�", "A")
   cTexto := StrTran(cTexto, "�", "E")
   cTexto := StrTran(cTexto, "�", "I")
   cTexto := StrTran(cTexto, "�", "O")
   cTexto := StrTran(cTexto, "�", "U")
   // acento circunflexo
   cTexto := StrTran(cTexto, "�", "a")
   cTexto := StrTran(cTexto, "�", "e")
   cTexto := StrTran(cTexto, "�", "i")
   cTexto := StrTran(cTexto, "�", "o")
   cTexto := StrTran(cTexto, "�", "u")
   cTexto := StrTran(cTexto, "�", "A")
   cTexto := StrTran(cTexto, "�", "E")
   cTexto := StrTran(cTexto, "�", "I")
   cTexto := StrTran(cTexto, "�", "O")
   cTexto := StrTran(cTexto, "�", "U")
   // til
   cTexto := StrTran(cTexto, "�", "a")
   cTexto := StrTran(cTexto, "�", "o")
   cTexto := StrTran(cTexto, "�", "A")
   cTexto := StrTran(cTexto, "�", "O")
   // ce-cedilha
   cTexto := StrTran(cTexto, "�", "c")
   cTexto := StrTran(cTexto, "�", "C")
   // trema
   cTexto := StrTran(cTexto, "�", "u")
   cTexto := StrTran(cTexto, "�", "U")
   // crase
   cTexto := StrTran(cTexto, "�", "a")
   cTexto := StrTran(cTexto, "�", "e")
   cTexto := StrTran(cTexto, "�", "i")
   cTexto := StrTran(cTexto, "�", "o")
   cTexto := StrTran(cTexto, "�", "u")
   cTexto := StrTran(cTexto, "�", "A")
   cTexto := StrTran(cTexto, "�", "E")
   cTexto := StrTran(cTexto, "�", "I")
   cTexto := StrTran(cTexto, "�", "O")
   cTexto := StrTran(cTexto, "�", "U")

RETURN cTexto

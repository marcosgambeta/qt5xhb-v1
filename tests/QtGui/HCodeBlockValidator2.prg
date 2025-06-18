//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// ATENÇÂO: por causa de diferenças entre Harbour e xHarbour, este exemplo
// contém linhas de programação específicas, conforme o projeto utilizado.

#include "qt5xhb.ch"

#ifdef __XHARBOUR__
REQUEST HB_GT_WIN
#endif

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oButton

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640, 480)

   oButton := QPushButton():new("Inclusão", oWindow)
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
   LOCAL oLabel1
   LOCAL oLineEdit1
   LOCAL oCBValidator2
   LOCAL oLabel2
   LOCAL oLineEdit2
   LOCAL oButtonIncluir
   LOCAL oButtonCancelar
   LOCAL nRet

   oDialog := QDialog():new(oParent)
   oDialog:setWindowTitle("Inclusão")
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
   oLabel1 := QLabel():new("Campo 1", oDialog)
   oLabel1:move(20, 20)
   oLabel1:resize(60, 30)
   oLineEdit1 := QLineEdit():new(oDialog)
   oLineEdit1:move(100, 20)
   oLineEdit1:setValidator(oCBValidator1)

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
   oLabel2 := QLabel():new("Campo 2", oDialog)
   oLabel2:move(20, 60)
   oLabel2:resize(60, 30)
   oLineEdit2 := QLineEdit():new(oDialog)
   oLineEdit2:move(100, 60)
   oLineEdit2:setValidator(oCBValidator2)

   oButtonIncluir := QPushButton():new("Incluir", oDialog)
   oButtonIncluir:move(20, 240 - 40)
   oButtonCancelar := QPushButton():new("Cancelar", oDialog)
   oButtonCancelar:move(120, 240 - 40)

   ? oButtonIncluir:onClicked({||IIf(oLineEdit1:hasAcceptableInput() .AND. oLineEdit2:hasAcceptableInput(), oDialog:accept(), QOut("campos incorretos"))})
   ? oButtonCancelar:onClicked({||oDialog:reject()})

   nRet := oDialog:exec()

   IF nRet == QDialog_Accepted
      ? "inclusao aceita"
   ELSEIF nRet == QDialog_Rejected
      ? "inclusao cancelada"
   ENDIF

   ? oButtonIncluir:onClicked()
   ? oButtonCancelar:onClicked()

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

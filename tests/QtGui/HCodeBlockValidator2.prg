//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
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

   // create application
   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640, 480)

   oButton := QPushButton():new("Inclusão", oWindow)
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

   ? oButtonIncluir:onClicked({||iif(oLineEdit1:hasAcceptableInput() .AND. oLineEdit2:hasAcceptableInput(), oDialog:accept(), qout("campos incorretos"))})
   ? oButtonCancelar:onClicked({||oDialog:reject()})

   nRet := oDialog:exec()

   IF nRet == QDialog_Accepted
      ? "inclusao aceita"
   ELSEIF nRet == QDialog_Rejected
      ? "inclusao cancelada"
   ENDIF

   ? oButtonIncluir:onClicked()
   ? oButtonCancelar:onClicked()

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

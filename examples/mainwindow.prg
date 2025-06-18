//
// Qt5xHb Project - Example Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// Exemplo de criação da janela principal de uma aplicação

// ATENÇÂO: por causa de diferenças entre Harbour e xHarbour, este exemplo
// contém linhas de programação específicas, conforme o projeto utilizado.

#include "qt5xhb.ch"

STATIC s_oApp
STATIC s_oMainWindow

// a função principal (main) cria um objeto da classe QApplication,
// um objeto da classe MainWindow e inicia o loop de eventos

PROCEDURE Main()

   s_oApp := QApplication():new()

   s_oMainWindow := MainWindow():new()

   s_oMainWindow:show()

   s_oApp:exec()

   s_oMainWindow:disconnectAll(.T.)

   s_oMainWindow:delete()

   s_oApp:delete()

RETURN

// a classe MainWindow é uma classe derivada da classe QMainWindow, com métodos para:
// . definir as propriedades da janela
// . criar a barra de menus e as ações
// . criar a barra de ferramentas
// . criar a barra de status
// . confirmar se o usuário quer realmente sair do programa
// . exibir mensagens

#include "hbclass.ch"

CLASS MainWindow INHERIT QMainWindow

   DATA oMenuBar
   DATA oMenu1
   DATA oActionNew
   DATA oActionOpen
   DATA oActionSave
   DATA oMenu2
   DATA oActionCut
   DATA oActionCopy
   DATA oActionPaste
   DATA oMenu3
   DATA oActionAbout
   DATA oActionAboutxH
   DATA oActionAboutCC
   DATA oActionAboutQt
   DATA oActionAboutQt5xHb
   DATA oToolBar
   DATA oStatusBar

   METHOD new
   METHOD defineProperties
   METHOD createMenuBar
   METHOD createToolBar
   METHOD createStatusBar
   METHOD defineEvents
   METHOD closeMainWindow
   METHOD showMessage

END CLASS

// o método 'new' executa o método 'new' da classe QMainWindow
// e configura a janela principal

METHOD new() CLASS MainWindow

   #ifdef __XHARBOUR__
   super:new()
   #else
   ::super:new()
   #endif

   ::defineProperties()
   ::createMenuBar()
   ::createToolBar()
   ::createStatusBar()
   ::defineEvents()

RETURN SELF

// o método 'defineProperties' define as propriedades
// 'title' e 'size' da janela principal

METHOD defineProperties() CLASS MainWindow

   ::setWindowTitle("Exemplo de criação da janela principal")
   ::resize(800, 600)

RETURN SELF

// o método 'createMenuBar' cria os menus da janela principal
// e configura a ação que cada item do menu irá executar

METHOD createMenuBar() CLASS MainWindow

   ::oMenuBar := ::menuBar()

   ::oMenu1 := ::oMenuBar:addMenu("&Arquivo")

   ::oActionNew := ::oMenu1:AddAction(QIcon():new("images\new.png"), "&Novo")
   ::oActionNew:setStatusTip("Executa a opção NOVO")
   ::oActionNew:onTriggered({|w, l|::showMessage("Arquivo/Novo")})

   ::oActionOpen := ::oMenu1:AddAction(QIcon():new("images\open.png"), "&Abrir")
   ::oActionOpen:setStatusTip("Executa a opção ABRIR")
   ::oActionOpen:onTriggered({|w, l|::showMessage("Arquivo/Abrir")})

   ::oActionSave := ::oMenu1:AddAction(QIcon():new("images\save.png"), "&Salvar")
   ::oActionSave:setStatusTip("Executa a opção SALVAR")
   ::oActionSave:onTriggered({|w, l|::showMessage("Arquivo/Salvar")})

   ::oMenu2 := ::oMenuBar:AddMenu("&Editar")

   ::oActionCut := ::oMenu2:AddAction(QIcon():New("images\cut.png"), "&Recortar")
   ::oActionCut:setStatusTip("Executa a opção RECORTAR")
   ::oActionCut:onTriggered({|w, l|::showMessage("Editar/Recortar")})

   ::oActionCopy := ::oMenu2:AddAction(QIcon():new("images\copy.png"), "&Copiar")
   ::oActionCopy:setStatusTip("Executa a opção COPIAR")
   ::oActionCopy:onTriggered({|w, l|::showMessage("Editar/Copiar")})

   ::oActionPaste := ::oMenu2:AddAction(QIcon():New("images\paste.png"), "C&olar")
   ::oActionPaste:setStatusTip("Executa a opção COLAR")
   ::oActionPaste:onTriggered({|w, l|::showMessage("Editar/Colar")})

   ::oMenu3 := ::oMenuBar:AddMenu("&Sobre")

   ::oActionAbout := ::oMenu3:AddAction("&Exemplo")
   ::oActionAbout:setStatusTip("Exibe informações sobre este exemplo")
   ::oActionAbout:onTriggered({|w, l|::showMessage("Este exemplo demonstra a criação da janela principal de uma aplicação")})

   ::oActionAboutxH := ::oMenu3:AddAction("&[x]Harbour")
   ::oActionAboutxH:setStatusTip("Exibe a versão do Harbour/xHarbour")
   ::oActionAboutxH:onTriggered({|w, l|::showMessage(Version())})

   ::oActionAboutCC := ::oMenu3:AddAction("&C/C++ Compiler")
   ::oActionAboutCC:setStatusTip("Exibe informações sobre o compilador C/C++")
   ::oActionAboutCC:onTriggered({|w, l|::showMessage(hb_compiler())})

   ::oActionAboutQt := ::oMenu3:AddAction("&Qt Framework")
   ::oActionAboutQt:setStatusTip("Exibe informações sobre o Qt Framework")
   ::oActionAboutQt:onTriggered({|w, l|s_oApp:aboutQt()})

   ::oActionAboutQt5xHb := ::oMenu3:AddAction("&Qt5xHb")
   ::oActionAboutQt5xHb:setStatusTip("Exibe a versão do Qt5xHb")
   ::oActionAboutQt5xHb:onTriggered({|w, l|::showMessage(qt5xhb_version())})

RETURN SELF

// o método 'createToolBar' cria a barra de ferramentas da janela principal
// e configura a ação que cada botão irá executar

METHOD createToolBar() CLASS MainWindow

   ::oToolBar := ::addToolBar("")

   ::oToolBar:addAction(::oActionNew)
   ::oToolBar:addAction(::oActionOpen)
   ::oToolBar:addAction(::oActionSave)

   ::oToolBar:addSeparator()

   ::oToolBar:addAction(::oActionCut)
   ::oToolBar:addAction(::oActionCopy)
   ::oToolBar:addAction(::oActionPaste)

RETURN SELF

// o método 'createStatusBar' cria a barra de status

METHOD createStatusBar() CLASS MainWindow

   ::oStatusBar := ::statusBar()

RETURN SELF

// o método 'defineEvent' define os eventos que serão processados

METHOD defineEvents() CLASS MainWindow

   ::onCloseEvent({|oSender, oEvent|::CloseMainWindow(oSender, oEvent)})

RETURN SELF

// o método 'closeMainWindow' confirma, com o usuário, se quer
// realmente sair do programa

METHOD closeMainWindow(oSender, oCloseEvent) CLASS MainWindow

   LOCAL oMB
   LOCAL nRet

   oMB := QMessageBox():new(QMessageBox_Question, ;
                            "Atenção", ;
                            "Quer realmente sair do programa ?", ;
                            QMessageBox_Yes + QMessageBox_No, ;
                            SELF, ;
                            Qt_Dialog + Qt_MSWindowsFixedSizeDialogHint)

   nRet := oMB:exec()

   oMB:delete()

   IF nRet == QMessageBox_Yes
      oCloseEvent:accept()
   ENDIF

   IF nRet == QMessageBox_No
      oCloseEvent:ignore()
   ENDIF

RETURN .T.

// o método 'showMessage' exibe uma janela com uma mensagem,
// usando a classe QMessageBox

METHOD showMessage(cText) CLASS MainWindow

   LOCAL oMB

   oMB := QMessageBox():new(QMessageBox_Information, "Informação", cText, QMessageBox_Ok, SELF)

   oMB:exec()

   oMB:delete()

RETURN NIL

//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

#include "qt5xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWebSocketServer

   oApp := QCoreApplication():new()

   oWebSocketServer := QWebSocketServer():new("WebSocketServer", QWebSocketServer_NonSecureMode)

   IF oWebSocketServer:listen(QHostAddress():new("127.0.0.1"), 1234)
      ? "servidor ativo na porta 1234"
   ELSE
      ? "servidor inativo"
      WAIT
      oWebSocketServer:delete()
      oApp:delete()
      QUIT
   ENDIF

   oWebSocketServer:onNewConnection({||newConnection(oWebSocketServer)})
   oWebSocketServer:onClosed({||oApp:quit()})

   oApp:exec()

   oWebSocketServer:delete()

   oApp:delete()

RETURN NIL

STATIC FUNCTION newConnection(oWebSocketServer)

   LOCAL oSocket

   ? "iniciando nova conexao"

   oSocket := oWebSocketServer:nextPendingConnection()

   oSocket:onDestroyed({|oSender|QOut(oSender:pointer), QOut("socket destruido"), oSender:disconnectAll(.T.)})
   oSocket:onTextMessageReceived({|oSender, cText|QOut(oSender:pointer), QOut("textMessageReceived=" + cText), oSender:sendTextMessage(cText)})
   oSocket:onDisconnected({|oSender|QOut(oSender:pointer), QOut("socket desconectado"), oSender:delete()})

   ? "finalizando nova conexao"

RETURN NIL

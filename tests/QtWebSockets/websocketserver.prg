//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWebSocketServer

   // create application
   oApp := QCoreApplication():new()

   oWebSocketServer := QWebSocketServer():new("WebSocketServer", QWebSocketServer_NonSecureMode)

   IF oWebSocketServer:listen(QHostAddress():new("127.0.0.1"), 1234)
      ? "servidor ativo na porta 1234"
   ELSE
      ? "servidor inativo"
      WAIT
      // delete objects
      oWebSocketServer:delete()
      oApp:delete()
      QUIT
   ENDIF

   oWebSocketServer:onNewConnection({||newConnection(oWebSocketServer)})
   oWebSocketServer:onClosed({||oApp:quit()})

   // start application
   oApp:exec()

   // delete objects
   oWebSocketServer:delete()
   oApp:delete()

RETURN NIL

STATIC FUNCTION newConnection(oWebSocketServer)

   LOCAL oSocket

   ? "iniciando nova conexao"

   oSocket := oWebSocketServer:nextPendingConnection()

   oSocket:onDestroyed({|oSender|qout(oSender:pointer), qout("socket destruido"), oSender:disconnectAll(.T.)})
   oSocket:onTextMessageReceived({|oSender, cText|qout(oSender:pointer), qout("textMessageReceived=" + cText), oSender:sendTextMessage(cText)})
   oSocket:onDisconnected({|oSender|qout(oSender:pointer), qout("socket desconectado"), oSender:delete()})

   ? "finalizando nova conexao"

RETURN NIL

/*

  Qt5xHb Project - Test Program

  Copyright (C) 2020 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/qt5xhb

*/

#include "qt5xhb.ch"
#include "hbthread.ch"

//STATIC s_mutex := hb_mutexCreate()

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWebSocketServer

//   ? s_mutex

   oApp := QCoreApplication():new()

   oWebSocketServer := QWebSocketServer():new( "WebSocketServer", QWebSocketServer_NonSecureMode )

   IF oWebSocketServer:listen( QHostAddress():new( "127.0.0.1" ), 1234 )
      ? "servidor ativo na porta 1234"
   ELSE
      ? "servidor inativo"
      WAIT
      oWebSocketServer:delete()
      oApp:delete()
      QUIT
   ENDIF

   oWebSocketServer:onNewConnection( {||hb_ThreadStart( HB_BITOR( HB_THREAD_INHERIT_PUBLIC, HB_THREAD_MEMVARS_COPY ), {| oWebSocketServer | newConnection( oWebSocketServer ) }, oWebSocketServer )} )
   oWebSocketServer:onClosed( {||oApp:quit()} )

   oApp:exec()

   oWebSocketServer:delete()

   oApp:delete()

RETURN

STATIC FUNCTION newConnection( oWebSocketServer )

   LOCAL oSocket

   ? "entrando - newConnection"

//   hb_mutexLock( s_mutex )

   oSocket := oWebSocketServer:nextPendingConnection()

   oSocket:onDestroyed( {|oSender|qout( oSender:pointer ), qout( "socket destruido" ), oSender:disconnectAll( .T. )} )
   oSocket:onTextMessageReceived( {|oSender, cText|qout( oSender:pointer ), qout( "textMessageReceived=" + cText ), oSender:sendTextMessage( cText )} )
   oSocket:onDisconnected( {|oSender|qout( oSender:pointer ), qout( "socket desconectado" ), oSender:delete()} )

//   hb_mutexUnlock( s_mutex )

   ? "saindo - newConnection"

RETURN NIL

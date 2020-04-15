%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetworkAuth

$header

%% #ifndef QT_NO_HTTP
%% #endif // QT_NO_HTTP

#include "hbclass.ch"

$addRequests

$beginClassFrom=QOAuthOobReplyHandler

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,10,0

$prototype=explicit QOAuthHttpServerReplyHandler(QObject *parent = nullptr)
$internalConstructor=5,10,0|new1|QObject *=nullptr

$prototype=explicit QOAuthHttpServerReplyHandler(quint16 port, QObject *parent = nullptr)
$internalConstructor=5,10,0|new2|quint16,QObject *=nullptr

$prototype=explicit QOAuthHttpServerReplyHandler(const QHostAddress &address, quint16 port, QObject *parent = nullptr)
$internalConstructor=5,10,0|new3|const QHostAddress &,quint16,QObject *=nullptr

/*
[1]explicit QOAuthHttpServerReplyHandler(QObject *parent = nullptr)
[2]explicit QOAuthHttpServerReplyHandler(quint16 port, QObject *parent = nullptr)
[3]explicit QOAuthHttpServerReplyHandler(const QHostAddress &address, quint16 port, QObject *parent = nullptr)
*/

HB_FUNC_STATIC( QOAUTHHTTPSERVERREPLYHANDLER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QOAuthHttpServerReplyHandler_new1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QOAuthHttpServerReplyHandler_new2();
  }
  else if( ISBETWEEN(2,3) && ISQHOSTADDRESS(1) && ISNUM(2) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    QOAuthHttpServerReplyHandler_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QOAuthHttpServerReplyHandler()
$deleteMethod=5,10,0

$prototype=QString callback() const override
$method=5,10,0|QString|callback|

$prototype=QString callbackPath() const
$method=5,10,0|QString|callbackPath|

$prototype=void setCallbackPath(const QString &path)
$method=5,10,0|void|setCallbackPath|const QString &

$prototype=QString callbackText() const
$method=5,10,0|QString|callbackText|

$prototype=void setCallbackText(const QString &text)
$method=5,10,0|void|setCallbackText|const QString &

$prototype=quint16 port() const
$method=5,10,0|quint16|port|

$prototype=bool listen(const QHostAddress &address = QHostAddress::Any, quint16 port = 0)
$method=5,10,0|bool|listen|const QHostAddress &=QHostAddress::Any,quint16=0

$prototype=void close()
$method=5,10,0|void|close|

$prototype=bool isListening() const
$method=5,10,0|bool|isListening|

#pragma ENDDUMP

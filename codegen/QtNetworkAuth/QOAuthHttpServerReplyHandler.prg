%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

%% #ifndef QT_NO_HTTP
%% #endif // QT_NO_HTTP

#include "hbclass.ch"

CLASS QOAuthHttpServerReplyHandler INHERIT QOAuthOobReplyHandler

   METHOD new
   METHOD delete

   METHOD callback
   METHOD callbackPath
   METHOD callbackText
   METHOD close
   METHOD isListening
   METHOD listen
   METHOD port
   METHOD setCallbackPath
   METHOD setCallbackText

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QOAuthHttpServerReplyHandler(QObject *parent = nullptr)
$internalConstructor=|new1|QObject *=nullptr

$prototype=explicit QOAuthHttpServerReplyHandler(quint16 port, QObject *parent = nullptr)
$internalConstructor=|new2|quint16,QObject *=nullptr

$prototype=explicit QOAuthHttpServerReplyHandler(const QHostAddress &address, quint16 port, QObject *parent = nullptr)
$internalConstructor=|new3|const QHostAddress &,quint16,QObject *=nullptr

//[1]explicit QOAuthHttpServerReplyHandler(QObject *parent = nullptr)
//[2]explicit QOAuthHttpServerReplyHandler(quint16 port, QObject *parent = nullptr)
//[3]explicit QOAuthHttpServerReplyHandler(const QHostAddress &address, quint16 port, QObject *parent = nullptr)

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
}

$prototype=~QOAuthHttpServerReplyHandler()
$deleteMethod

$prototype=QString callback() const override
$method=|QString|callback|

$prototype=QString callbackPath() const
$method=|QString|callbackPath|

$prototype=void setCallbackPath(const QString &path)
$method=|void|setCallbackPath|const QString &

$prototype=QString callbackText() const
$method=|QString|callbackText|

$prototype=void setCallbackText(const QString &text)
$method=|void|setCallbackText|const QString &

$prototype=quint16 port() const
$method=|quint16|port|

$prototype=bool listen(const QHostAddress &address = QHostAddress::Any, quint16 port = 0)
$method=|bool|listen|const QHostAddress &=QHostAddress::Any,quint16=0

$prototype=void close()
$method=|void|close|

$prototype=bool isListening() const
$method=|bool|isListening|

#pragma ENDDUMP

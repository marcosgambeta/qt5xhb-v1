%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

%% #ifndef QT_NO_HTTP
%% #endif // QT_NO_HTTP

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractOAuthReplyHandler

   METHOD new
   METHOD delete

   METHOD callback

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,10,0

$prototype=explicit QOAuthOobReplyHandler(QObject *parent = nullptr)
$constructor=5,10,0|new|QObject *=nullptr

$deleteMethod=5,10,0

$prototype=QString callback() const override
$method=5,10,0|QString|callback|

$prototype=void networkReplyFinished(QNetworkReply *reply) override (protected)

$prototype=QVariantMap parseResponse(const QByteArray &response) (private)

#pragma ENDDUMP

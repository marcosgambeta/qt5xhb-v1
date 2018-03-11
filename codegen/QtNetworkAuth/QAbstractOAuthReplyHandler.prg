%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

%% #ifndef QT_NO_HTTP
%% #endif // QT_NO_HTTP

#include "hbclass.ch"

CLASS QAbstractOAuthReplyHandler INHERIT QObject

%%   METHOD new
   METHOD delete

   METHOD callback
   METHOD networkReplyFinished

   METHOD onCallbackDataReceived
%%   METHOD onCallbackReceived
   METHOD onReplyDataReceived
%%   METHOD onTokensReceived

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QAbstractOAuthReplyHandler(QObject *parent = nullptr) (abstract)
%% $constructor=|new|QObject *=nullptr

$prototype=QAbstractOAuthReplyHandler(QObjectPrivate &d, QObject *parent = nullptr) (protected)

$prototype=virtual ~QAbstractOAuthReplyHandler()
$deleteMethod

$prototype=virtual QString callback() const = 0
$virtualMethod=|QString|callback|

$prototype=virtual void networkReplyFinished(QNetworkReply *reply) = 0 (slot)
$virtualMethod=|void|networkReplyFinished|QNetworkReply *

$beginSignals
$signal=|callbackDataReceived(QByteArray)
%% $signal=|callbackReceived(QVariantMap)
$signal=|replyDataReceived(QByteArray)
%% $signal=|tokensReceived(QVariantMap)
$endSignals

#pragma ENDDUMP

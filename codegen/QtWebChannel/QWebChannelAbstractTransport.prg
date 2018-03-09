%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QWebChannelAbstractTransport INHERIT QObject

%%   METHOD new
   METHOD delete
   METHOD sendMessage

   METHOD onMessageReceived

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

$prototype=explicit QWebChannelAbstractTransport(QObject *parent = 0) (abstract)
%% $constructor=5,4,0|new|QObject *=0

$deleteMethod=5,4,0

$prototype=virtual void sendMessage(const QJsonObject &message) = 0
$virtualMethod=5,4,0|void|sendMessage|const QJsonObject &

$connectSignalFunction

$signalMethod=5,4,0|messageReceived(QJsonObject,QWebChannelAbstractTransport*)

#pragma ENDDUMP

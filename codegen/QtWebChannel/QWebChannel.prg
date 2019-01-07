%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebChannel

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,4,0

$prototype=explicit QWebChannel(QObject *parent = 0)
$constructor=5,4,0|new|QObject *=0

$deleteMethod=5,4,0

$prototype=Q_INVOKABLE void registerObject(const QString &id, QObject *object)
$method=5,4,0|void|registerObject|const QString &,QObject *

$prototype=Q_INVOKABLE void deregisterObject(QObject *object)
$method=5,4,0|void|deregisterObject|QObject *

$prototype=bool blockUpdates() const
$method=5,4,0|bool|blockUpdates|

$prototype=void setBlockUpdates(bool block)
$method=5,4,0|void|setBlockUpdates|bool

$prototype=void connectTo(QWebChannelAbstractTransport *transport)
$method=5,4,0|void|connectTo|QWebChannelAbstractTransport *

$prototype=void disconnectFrom(QWebChannelAbstractTransport *transport)
$method=5,4,0|void|disconnectFrom|QWebChannelAbstractTransport *

$beginSignals
$signal=5,4,0|blockUpdatesChanged(bool)
$endSignals

#pragma ENDDUMP

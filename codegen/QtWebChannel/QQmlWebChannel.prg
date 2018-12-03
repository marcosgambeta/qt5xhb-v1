%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebChannel

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QWebChannel

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,4,0

$prototype=explicit QQmlWebChannel(QObject *parent = 0)
$constructor=5,4,0|new|QObject *=0

$deleteMethod=5,4,0

$prototype=Q_INVOKABLE void registerObjects(const QVariantMap &objects)
%% TODO: implementar
%% $method=5,4,0|void|registerObjects|const QVariantMap &

$prototype=QQmlListProperty<QObject> registeredObjects()
%% TODO: implementar
%% $method=5,4,0|QQmlListProperty<QObject>|registeredObjects|

$prototype=QQmlListProperty<QObject> transports()
%% TODO: implementar
%% $method=5,4,0|QQmlListProperty<QObject>|transports|

$prototype=static QQmlWebChannelAttached *qmlAttachedProperties(QObject *obj)
%% TODO: implementar
%% $staticMethod=5,4,0|QQmlWebChannelAttached *|qmlAttachedProperties|QObject *

$prototype=Q_INVOKABLE void connectTo(QObject *transport)
$method=5,4,0|void|connectTo|QObject *

$prototype=Q_INVOKABLE void disconnectFrom(QObject *transport)
$method=5,4,0|void|disconnectFrom|QObject *

#pragma ENDDUMP

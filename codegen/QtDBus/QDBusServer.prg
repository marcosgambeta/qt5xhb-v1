%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDBus

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QDBusError>

$prototype=QDBusServer(const QString &address, QObject *parent = 0)
$internalConstructor=|new1|const QString &,QObject *=0

$prototype=QDBusServer(QObject *parent = 0)
$internalConstructor=|new2|QObject *=0

//[1]QDBusServer(const QString &address, QObject *parent = 0)
//[2]QDBusServer(QObject *parent = 0)

HB_FUNC_STATIC( QDBUSSERVER_NEW )
{
  // TODO: implementar
}

$deleteMethod

$prototype=bool isConnected() const
$method=|bool|isConnected|

$prototype=QDBusError lastError() const
$method=|QDBusError|lastError|

$prototype=QString address() const
$method=|QString|address|

$beginSignals
$signal=|newConnection(QDBusConnection)
$endSignals

#pragma ENDDUMP

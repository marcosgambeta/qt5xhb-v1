%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDBUSERROR
#endif

CLASS QDBusServer INHERIT QObject

   METHOD new
   METHOD delete
   METHOD isConnected
   METHOD lastError
   METHOD address

   METHOD onNewConnection

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

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

$connectSignalFunction

$signalMethod=|newConnection(QDBusConnection)

#pragma ENDDUMP

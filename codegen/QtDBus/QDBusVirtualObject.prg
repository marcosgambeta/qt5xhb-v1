%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDBus

$header

%% TODO: checar implementacao da classe

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QDBusVirtualObject(QObject *parent = 0)
%% $constructor=|new|QObject *=0

%% $deleteMethod

$prototype=virtual QString introspect(const QString &path) const = 0
%% $virtualMethod=|QString|introspect|const QString &

$prototype=virtual bool handleMessage(const QDBusMessage &message, const QDBusConnection &connection) = 0
%% $virtualMethod=|bool|handleMessage|const QDBusMessage &,const QDBusConnection &

#pragma ENDDUMP

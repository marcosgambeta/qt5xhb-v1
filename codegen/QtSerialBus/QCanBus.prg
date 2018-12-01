%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSerialBus

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,8,0

$prototype=QCanBus(QObject *parent = nullptr) [private]

%% $deleteMethod

$prototype=static QCanBus *instance()
$staticMethod=5,8,0|QCanBus *|instance|

$prototype=QStringList plugins() const
$method=5,8,0|QStringList|plugins|

$prototype=QList<QCanBusDeviceInfo> availableDevices(const QString &plugin, QString *errorMessage = nullptr) const
$method=5,9,0|QList<QCanBusDeviceInfo>|availableDevices|const QString &,QString *=nullptr

$prototype=QCanBusDevice *createDevice(const QString &plugin, const QString &interfaceName, QString *errorMessage = nullptr) const
$method=5,8,0|QCanBusDevice *|createDevice|const QString &,const QString &,QString *=nullptr

#pragma ENDDUMP

%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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

$prototype=QCanBus(QObject *parent = nullptr) (private)

%% $deleteMethod

$prototype=static QCanBus *instance()
$staticMethod=|QCanBus *|instance|

$prototype=QStringList plugins() const
$method=|QStringList|plugins|

$prototype=QList<QCanBusDeviceInfo> availableDevices(const QString &plugin, QString *errorMessage = nullptr) const
$method=|QList<QCanBusDeviceInfo>|availableDevices|const QString &,QString *=nullptr

$prototype=QCanBusDevice *createDevice(const QString &plugin, const QString &interfaceName, QString *errorMessage = nullptr) const
$method=|QCanBusDevice *|createDevice|const QString &,const QString &,QString *=nullptr

#pragma ENDDUMP

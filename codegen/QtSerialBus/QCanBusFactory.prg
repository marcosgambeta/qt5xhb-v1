%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSerialBus

$header

%% TODO:
%% class Q_SERIALBUS_EXPORT QCanBusFactoryV2 : public QCanBusFactory
%% {
%% public:
%%     virtual QCanBusDevice *createDevice(const QString &interfaceName,
%%                                         QString *errorMessage) const = 0;
%%     virtual QList<QCanBusDeviceInfo> availableDevices(QString *errorMessage) const = 0;
%%
%% protected:
%%     virtual ~QCanBusFactoryV2();
%% };

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,8,0

$prototype=virtual QCanBusDevice *createDevice(const QString &interfaceName, QString *errorMessage) const = 0

$prototype=virtual ~QCanBusFactory() [protected]
%% $deleteMethod

$extraMethods

#pragma ENDDUMP

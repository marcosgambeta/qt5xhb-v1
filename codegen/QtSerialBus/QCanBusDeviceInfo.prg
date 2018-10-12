%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QCanBusDeviceInfo() = delete
$internalConstructor=|new1|

$prototype=QCanBusDeviceInfo(const QCanBusDeviceInfo &other)
$internalConstructor=|new2|const QCanBusDeviceInfo &

$prototype=explicit QCanBusDeviceInfo(QCanBusDeviceInfoPrivate &dd) (private)

//[1]QCanBusDeviceInfo() = delete
//[2]QCanBusDeviceInfo(const QCanBusDeviceInfo &other)

HB_FUNC_STATIC( QCANBUSDEVICEINFO_NEW )
{
%% TODO: implementar
}

$prototype=~QCanBusDeviceInfo()
$deleteMethod

$prototype=void swap(QCanBusDeviceInfo &other) Q_DECL_NOTHROW
$method=|void|swap|QCanBusDeviceInfo &

$prototype=QString name() const
$method=|QString|name|

$prototype=bool hasFlexibleDataRate() const
$method=|bool|hasFlexibleDataRate|

$prototype=bool isVirtual() const
$method=|bool|isVirtual|

#pragma ENDDUMP

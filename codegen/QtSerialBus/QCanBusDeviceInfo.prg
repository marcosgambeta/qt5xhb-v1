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

$includes=5,8,0

$prototype=QCanBusDeviceInfo() = delete
$internalConstructor=5,8,0|new1|

$prototype=QCanBusDeviceInfo(const QCanBusDeviceInfo &other)
$internalConstructor=5,8,0|new2|const QCanBusDeviceInfo &

$prototype=explicit QCanBusDeviceInfo(QCanBusDeviceInfoPrivate &dd) (private)

//[1]QCanBusDeviceInfo() = delete
//[2]QCanBusDeviceInfo(const QCanBusDeviceInfo &other)

HB_FUNC_STATIC( QCANBUSDEVICEINFO_NEW )
{
%% TODO: implementar
}

$prototype=~QCanBusDeviceInfo()
$deleteMethod=5,8,0

$prototype=void swap(QCanBusDeviceInfo &other) Q_DECL_NOTHROW
$method=5,8,0|void|swap|QCanBusDeviceInfo &

$prototype=QString name() const
$method=5,8,0|QString|name|

$prototype=bool hasFlexibleDataRate() const
$method=5,8,0|bool|hasFlexibleDataRate|

$prototype=bool isVirtual() const
$method=5,8,0|bool|isVirtual|

#pragma ENDDUMP

%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QVideoDeviceSelectorControl INHERIT QMediaControl

%%   METHOD new
   METHOD delete

   METHOD defaultDevice
   METHOD deviceCount
   METHOD deviceDescription
   METHOD deviceName
   METHOD selectedDevice
   METHOD setSelectedDevice

   METHOD onDevicesChanged
   METHOD onSelectedDeviceChanged1
   METHOD onSelectedDeviceChanged2

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QVideoDeviceSelectorControl(QObject *parent = Q_NULLPTR) (protected)

$prototype=virtual ~QVideoDeviceSelectorControl()
$deleteMethod

$prototype=virtual int defaultDevice() const = 0
$virtualMethod=|int|defaultDevice|

$prototype=virtual int deviceCount() const = 0
$virtualMethod=|int|deviceCount|

$prototype=virtual QString deviceDescription(int index) const = 0
$virtualMethod=|QString|deviceDescription|int

$prototype=virtual QString deviceName(int index) const = 0
$virtualMethod=|QString|deviceName|int

$prototype=virtual int selectedDevice() const = 0
$virtualMethod=|int|selectedDevice|

$prototype=virtual void setSelectedDevice(int index) = 0
$virtualSlotMethod=|void|setSelectedDevice|int

$beginSignals
$signalMethod=|devicesChanged()
$beginGroup
$signalMethod=|selectedDeviceChanged(int)
$signalMethod=|selectedDeviceChanged(QString)
$endGroup
$endSignals

#pragma ENDDUMP

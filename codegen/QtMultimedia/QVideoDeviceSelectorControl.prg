$header

#include "hbclass.ch"

CLASS QVideoDeviceSelectorControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

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

$deleteMethod

/*
virtual int defaultDevice() const = 0
*/
$method=|int|defaultDevice|

/*
virtual int deviceCount() const = 0
*/
$method=|int|deviceCount|

/*
virtual QString deviceDescription(int index) const = 0
*/
$method=|QString|deviceDescription|int

/*
virtual QString deviceName(int index) const = 0
*/
$method=|QString|deviceName|int

/*
virtual int selectedDevice() const = 0
*/
$method=|int|selectedDevice|

/*
virtual void setSelectedDevice(int index) = 0
*/
$method=|void|setSelectedDevice|int

#pragma ENDDUMP

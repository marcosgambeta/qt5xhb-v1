$header

#include "hbclass.ch"

CLASS QVideoDeviceSelectorControl INHERIT QMediaControl

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
$virtualMethod=|void|setSelectedDevice|int

#pragma ENDDUMP

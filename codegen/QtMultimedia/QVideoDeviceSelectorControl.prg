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
$method=|int|defaultDevice|

$prototype=virtual int deviceCount() const = 0
$method=|int|deviceCount|

$prototype=virtual QString deviceDescription(int index) const = 0
$method=|QString|deviceDescription|int

$prototype=virtual QString deviceName(int index) const = 0
$method=|QString|deviceName|int

$prototype=virtual int selectedDevice() const = 0
$method=|int|selectedDevice|

$prototype=virtual void setSelectedDevice(int index) = 0
$method=|void|setSelectedDevice|int

#pragma ENDDUMP

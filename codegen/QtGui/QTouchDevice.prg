$header

#include "hbclass.ch"

CLASS QTouchDevice

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD name
   METHOD type
   METHOD capabilities
   METHOD setName
   METHOD setType
   METHOD setCapabilities
   METHOD devices

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTouchDevice()
$constructor=|new|

$deleteMethod

$prototype=QString name() const
$method=|QString|name|

$prototype=DeviceType type() const
$method=|QTouchDevice::DeviceType|type|

$prototype=Capabilities capabilities() const
$method=|QTouchDevice::Capabilities|capabilities|

$prototype=void setName(const QString &name)
$method=|void|setName|const QString &

$prototype=void setType(DeviceType devType)
$method=|void|setType|QTouchDevice::DeviceType

$prototype=void setCapabilities(Capabilities caps)
$method=|void|setCapabilities|QTouchDevice::Capabilities

$prototype=static QList<const QTouchDevice *> devices()
$staticMethod=|QList<const QTouchDevice *>|devices|

$extraMethods

#pragma ENDDUMP

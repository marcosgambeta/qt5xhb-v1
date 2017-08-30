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

/*
QTouchDevice()
*/
$constructor=|new|

$deleteMethod

/*
QString name() const
*/
$method=|QString|name|

/*
DeviceType type() const
*/
$method=|QTouchDevice::DeviceType|type|

/*
Capabilities capabilities() const
*/
$method=|QTouchDevice::Capabilities|capabilities|

/*
void setName(const QString &name)
*/
$method=|void|setName|const QString &

/*
void setType(DeviceType devType)
*/
$method=|void|setType|QTouchDevice::DeviceType

/*
void setCapabilities(Capabilities caps)
*/
$method=|void|setCapabilities|QTouchDevice::Capabilities

/*
static QList<const QTouchDevice *> devices()
*/
$staticMethod=|QList<const QTouchDevice *>|devices|

$extraMethods

#pragma ENDDUMP

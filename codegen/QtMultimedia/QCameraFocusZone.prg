$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECTF
#endif

CLASS QCameraFocusZone

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD area
   METHOD isValid
   METHOD status

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

$prototype=QCameraFocusZone(const QCameraFocusZone & other)
$constructor=|new|const QCameraFocusZone &

$deleteMethod

$prototype=QRectF area() const
$method=|QRectF|area|

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=FocusZoneStatus status() const
$method=|QCameraFocusZone::FocusZoneStatus|status|

$extraMethods

#pragma ENDDUMP

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QAccessibleValueInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD currentValue
   METHOD setCurrentValue
   METHOD maximumValue
   METHOD minimumValue
   METHOD minimumStepSize

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

$deleteMethod

$prototype=virtual QVariant currentValue() const = 0
$virtualMethod=|QVariant|currentValue|

$prototype=virtual void setCurrentValue(const QVariant &value) = 0
$virtualMethod=|void|setCurrentValue|const QVariant &

$prototype=virtual QVariant maximumValue() const = 0
$virtualMethod=|QVariant|maximumValue|

$prototype=virtual QVariant minimumValue() const = 0
$virtualMethod=|QVariant|minimumValue|

$prototype=virtual QVariant minimumStepSize() const = 0
$virtualMethod=|QVariant|minimumStepSize|

$extraMethods

#pragma ENDDUMP

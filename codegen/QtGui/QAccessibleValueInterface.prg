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

/*
virtual QVariant currentValue() const = 0
*/
$method=|QVariant|currentValue|

/*
virtual void setCurrentValue(const QVariant &value) = 0
*/
$method=|void|setCurrentValue|const QVariant &

/*
virtual QVariant maximumValue() const = 0
*/
$method=|QVariant|maximumValue|

/*
virtual QVariant minimumValue() const = 0
*/
$method=|QVariant|minimumValue|

/*
virtual QVariant minimumStepSize() const = 0
*/
$method=|QVariant|minimumStepSize|

$extraMethods

#pragma ENDDUMP

$header

#include "hbclass.ch"

CLASS QAccessibleBridge

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD setRootObject
   METHOD notifyAccessibilityUpdate

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

$prototype=virtual void setRootObject(QAccessibleInterface *) = 0
$virtualMethod=|void|setRootObject|QAccessibleInterface *

$prototype=virtual void notifyAccessibilityUpdate(QAccessibleEvent *event) = 0
$virtualMethod=|void|notifyAccessibilityUpdate|QAccessibleEvent *

$extraMethods

#pragma ENDDUMP

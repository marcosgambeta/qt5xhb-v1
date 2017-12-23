$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
REQUEST QACCESSIBLEINTERFACE
#endif

CLASS QAccessibleEvent

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD type
   METHOD object
   METHOD setChild
   METHOD child
   METHOD accessibleInterface

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

$prototype=QAccessibleEvent(QObject *obj, QAccessible::Event typ)
$constructor=|new|QObject *,QAccessible::Event

$deleteMethod

$prototype=QAccessible::Event type() const
$method=|QAccessible::Event|type|

$prototype=QObject *object() const
$method=|QObject *|object|

$prototype=void setChild(int chld)
$method=|void|setChild|int

$prototype=int child() const
$method=|int|child|

$prototype=virtual QAccessibleInterface *accessibleInterface() const
$virtualMethod=|QAccessibleInterface *|accessibleInterface|

$extraMethods

#pragma ENDDUMP

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

/*
QAccessibleEvent(QObject *obj, QAccessible::Event typ)
*/
$constructor=|new|QObject *,QAccessible::Event

$deleteMethod

/*
QAccessible::Event type() const
*/
$method=|QAccessible::Event|type|

/*
QObject *object() const
*/
$method=|QObject *|object|

/*
void setChild(int chld)
*/
$method=|void|setChild|int

/*
int child() const
*/
$method=|int|child|

/*
virtual QAccessibleInterface *accessibleInterface() const
*/
$method=|QAccessibleInterface *|accessibleInterface|

$extraMethods

#pragma ENDDUMP

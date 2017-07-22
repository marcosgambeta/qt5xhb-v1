$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMETAOBJECT
#endif

CLASS QMetaClassInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD name
   METHOD value
   METHOD enclosingMetaObject

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
QMetaClassInfo()
*/
$constructor=|new|

$deleteMethod

/*
const char *name() const
*/
$method=|const char *|name|

/*
const char *value() const
*/
$method=|const char *|value|

/*
const QMetaObject *enclosingMetaObject() const
*/
$method=|const QMetaObject *|enclosingMetaObject|

$extraMethods

#pragma ENDDUMP

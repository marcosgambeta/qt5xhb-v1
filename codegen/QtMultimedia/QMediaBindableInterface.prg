$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIAOBJECT
#endif

CLASS QMediaBindableInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD mediaObject

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
virtual QMediaObject * mediaObject() const = 0
*/
$method=|QMediaObject *|mediaObject|

$extraMethods

#pragma ENDDUMP

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QAccessibleImageInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD imageDescription
   METHOD imageSize

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

$prototype=virtual QString imageDescription() const = 0
$method=|QString|imageDescription|

$prototype=virtual QSize imageSize() const = 0
$method=|QSize|imageSize|

$extraMethods

#pragma ENDDUMP

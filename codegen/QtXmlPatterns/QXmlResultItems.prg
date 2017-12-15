$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QXMLITEM
#endif

CLASS QXmlResultItems

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD current
   METHOD hasError
   METHOD next

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

#include <QXmlItem>

$prototype=QXmlResultItems ()
$constructor=|new|

$deleteMethod

$prototype=QXmlItem current () const
$method=|QXmlItem|current|

$prototype=bool hasError () const
$method=|bool|hasError|

$prototype=QXmlItem next ()
$method=|QXmlItem|next|

$extraMethods

#pragma ENDDUMP

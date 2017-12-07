$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QREADWRITELOCK
#endif

CLASS QReadLocker

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD unlock
   METHOD relock
   METHOD readWriteLock

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

$prototype=QReadLocker(QReadWriteLock *readWriteLock)
$constructor=|new|QReadWriteLock *

$deleteMethod

$prototype=void unlock()
$method=|void|unlock|

$prototype=void relock()
$method=|void|relock|

$prototype=QReadWriteLock *readWriteLock() const
$method=|QReadWriteLock *|readWriteLock|

$extraMethods

#pragma ENDDUMP

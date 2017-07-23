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

/*
QReadLocker(QReadWriteLock *readWriteLock)
*/
$constructor=|new|QReadWriteLock *

$deleteMethod

/*
void unlock()
*/
$method=|void|unlock|

/*
void relock()
*/
$method=|void|relock|

/*
QReadWriteLock *readWriteLock() const
*/
$method=|QReadWriteLock *|readWriteLock|

$extraMethods

#pragma ENDDUMP

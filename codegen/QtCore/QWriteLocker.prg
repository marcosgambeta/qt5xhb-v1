$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QREADWRITELOCK
#endif

CLASS QWriteLocker

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD readWriteLock
   METHOD relock
   METHOD unlock

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
QWriteLocker(QReadWriteLock * lock)
*/
$constructor=|new|QReadWriteLock *

$deleteMethod

/*
QReadWriteLock * readWriteLock() const
*/
$method=|QReadWriteLock *|readWriteLock|

/*
void relock()
*/
$method=|void|relock|

/*
void unlock()
*/
$method=|void|unlock|

$extraMethods

#pragma ENDDUMP

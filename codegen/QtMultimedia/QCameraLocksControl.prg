$header

#include "hbclass.ch"

CLASS QCameraLocksControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD lockStatus
   METHOD searchAndLock
   METHOD supportedLocks
   METHOD unlock

   METHOD onLockStatusChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual QCamera::LockStatus lockStatus(QCamera::LockType lock) const = 0
*/
$method=|QCamera::LockStatus|lockStatus|QCamera::LockType

/*
virtual void searchAndLock(QCamera::LockTypes locks) = 0
*/
$method=|void|searchAndLock|QCamera::LockTypes

/*
virtual QCamera::LockTypes supportedLocks() const = 0
*/
$method=|QCamera::LockTypes|supportedLocks|

/*
virtual void unlock(QCamera::LockTypes locks) = 0
*/
$method=|void|unlock|QCamera::LockTypes

#pragma ENDDUMP

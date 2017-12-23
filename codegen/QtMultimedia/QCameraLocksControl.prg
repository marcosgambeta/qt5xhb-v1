$header

#include "hbclass.ch"

CLASS QCameraLocksControl INHERIT QMediaControl

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

$prototype=virtual QCamera::LockStatus lockStatus(QCamera::LockType lock) const = 0
$virtualMethod=|QCamera::LockStatus|lockStatus|QCamera::LockType

$prototype=virtual void searchAndLock(QCamera::LockTypes locks) = 0
$virtualMethod=|void|searchAndLock|QCamera::LockTypes

$prototype=virtual QCamera::LockTypes supportedLocks() const = 0
$virtualMethod=|QCamera::LockTypes|supportedLocks|

$prototype=virtual void unlock(QCamera::LockTypes locks) = 0
$virtualMethod=|void|unlock|QCamera::LockTypes

#pragma ENDDUMP

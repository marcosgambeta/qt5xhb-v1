%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QCameraLocksControl INHERIT QMediaControl

%%   METHOD new
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

$prototype=explicit QCameraLocksControl(QObject *parent = Q_NULLPTR) (protected)

$prototype=~QCameraLocksControl()
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

%% Q_SIGNALS:
%% void lockStatusChanged(QCamera::LockType type, QCamera::LockStatus status, QCamera::LockChangeReason reason);

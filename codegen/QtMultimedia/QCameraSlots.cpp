%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

$slot=|captureModeChanged( QCamera::CaptureModes mode )
$slot=|error( QCamera::Error value )
$slot=|lockFailed()
$slot=|lockStatusChanged( QCamera::LockStatus status, QCamera::LockChangeReason reason )
$slot=|lockStatusChanged( QCamera::LockType lock, QCamera::LockStatus status, QCamera::LockChangeReason reason )
$slot=|locked()
$slot=|stateChanged( QCamera::State state )
$slot=|statusChanged( QCamera::Status status )

$signalMethod=|captureModeChanged(QCamera::CaptureModes)
$signalMethod=|error(QCamera::Error)
$signalMethod=|lockFailed()
$signalMethod=|lockStatusChanged(QCamera::LockStatus,QCamera::LockChangeReason)
$signalMethod=|lockStatusChanged(QCamera::LockType,QCamera::LockStatus,QCamera::LockChangeReason)
$signalMethod=|locked()
$signalMethod=|stateChanged(QCamera::State)
$signalMethod=|statusChanged(QCamera::Status)

$endSlotsClass

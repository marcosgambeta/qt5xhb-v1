%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|captureModeChanged( QCamera::CaptureModes mode )
$signal=|error( QCamera::Error value )
$signal=|lockFailed()
$signal=|lockStatusChanged( QCamera::LockStatus status, QCamera::LockChangeReason reason )
$signal=|lockStatusChanged( QCamera::LockType lock, QCamera::LockStatus status, QCamera::LockChangeReason reason )
$signal=|locked()
$signal=|stateChanged( QCamera::State state )
$signal=|statusChanged( QCamera::Status status )
$endSlotsClass

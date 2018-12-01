%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

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
$endSlotsClass

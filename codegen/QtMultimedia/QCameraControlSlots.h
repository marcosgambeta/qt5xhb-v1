%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

$includes

$beginSlotsClass
$signal=|captureModeChanged( QCamera::CaptureModes mode )
$signal=|error( int error, const QString & errorString )
$signal=|stateChanged( QCamera::State state )
$signal=|statusChanged( QCamera::Status status )
$endSlotsClass

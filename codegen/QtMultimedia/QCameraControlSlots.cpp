%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

$slot=|captureModeChanged( QCamera::CaptureModes mode )
$slot=|error( int error, const QString & errorString )
$slot=|stateChanged( QCamera::State state )
$slot=|statusChanged( QCamera::Status status )

$signalMethod=|captureModeChanged(QCamera::CaptureModes)
$signalMethod=|error(int,QString)
$signalMethod=|stateChanged(QCamera::State)
$signalMethod=|statusChanged(QCamera::Status)

$endSlotsClass

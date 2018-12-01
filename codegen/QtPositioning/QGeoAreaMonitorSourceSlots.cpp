%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtPositioning

$header

$includes=5,2,0

$beginSlotsClass
$slot=5,2,0|areaEntered( const QGeoAreaMonitorInfo & monitor, const QGeoPositionInfo & update )
$slot=5,2,0|areaExited( const QGeoAreaMonitorInfo & monitor, const QGeoPositionInfo & update )
$slot=5,2,0|monitorExpired( const QGeoAreaMonitorInfo & monitor )
$slot=5,2,0|error( QGeoAreaMonitorSource::Error error )
$endSlotsClass

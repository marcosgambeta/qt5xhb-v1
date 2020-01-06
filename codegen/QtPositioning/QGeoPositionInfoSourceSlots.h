%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtPositioning

$header

$includes=5,2,0

$beginSlotsClass
$signal=5,2,0|positionUpdated( const QGeoPositionInfo & update )
$signal=5,2,0|updateTimeout()
$signal=5,2,0|error( QGeoPositionInfoSource::Error error )
$endSlotsClass

%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes=5,2,0

$beginSlotsClass
$signal=5,2,0|void positionUpdated( const QGeoPositionInfo & update );
$signal=5,2,0|void updateTimeout();
$signal=5,2,0|void error( QGeoPositionInfoSource::Error );
$endSlotsClass
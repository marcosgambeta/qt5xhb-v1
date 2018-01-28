%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes=5,2,0

$beginSlotsClass
$signal=5,2,0|void satellitesInViewUpdated( const QList<QGeoSatelliteInfo> & satellites );
$signal=5,2,0|void satellitesInUseUpdated( const QList<QGeoSatelliteInfo> & satellites );
$signal=5,2,0|void requestTimeout();
$signal=5,2,0|void error( QGeoSatelliteInfoSource::Error error );
$endSlotsClass

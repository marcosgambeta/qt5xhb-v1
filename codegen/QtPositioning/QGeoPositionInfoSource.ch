%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtPositioning

$header

/*
enum QGeoPositionInfoSource::Error
*/
#define QGeoPositionInfoSource_AccessError                           0
#define QGeoPositionInfoSource_ClosedError                           1
#define QGeoPositionInfoSource_UnknownSourceError                    2

/*
enum QGeoPositionInfoSource::PositioningMethod
flags QGeoPositionInfoSource::PositioningMethod2
*/
#define QGeoPositionInfoSource_SatellitePositioningMethods           0x000000ff
#define QGeoPositionInfoSource_NonSatellitePositioningMethods        0xffffff00
#define QGeoPositionInfoSource_AllPositioningMethods                 0xffffffff

%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtPositioning

$header

/*
enum QGeoAreaMonitorSource::Error
*/
#define QGeoAreaMonitorSource_AccessError                            0
#define QGeoAreaMonitorSource_InsufficientPositionInfo               1
#define QGeoAreaMonitorSource_UnknownSourceError                     2

/*
enum QGeoAreaMonitorSource::AreaMonitorFeature
flags QGeoAreaMonitorSource::AreaMonitorFeatures
*/
#define QGeoAreaMonitorSource_PersistentAreaMonitorFeature           0x00000001
#define QGeoAreaMonitorSource_AnyAreaMonitorFeature                  0xffffffff

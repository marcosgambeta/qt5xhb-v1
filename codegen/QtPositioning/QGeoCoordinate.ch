%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtPositioning

$header

/*
enum QGeoCoordinate::CoordinateType
*/
#define QGeoCoordinate_InvalidCoordinate                             0
#define QGeoCoordinate_Coordinate2D                                  1
#define QGeoCoordinate_Coordinate3D                                  2

/*
enum QGeoCoordinate::CoordinateFormat
*/
#define QGeoCoordinate_Degrees                                       0
#define QGeoCoordinate_DegreesWithHemisphere                         1
#define QGeoCoordinate_DegreesMinutes                                2
#define QGeoCoordinate_DegreesMinutesWithHemisphere                  3
#define QGeoCoordinate_DegreesMinutesSeconds                         4
#define QGeoCoordinate_DegreesMinutesSecondsWithHemisphere           5

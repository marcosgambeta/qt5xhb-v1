/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

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

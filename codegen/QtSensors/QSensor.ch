%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSensors

$header

/*
enum QSensor::Feature
*/
#define QSensor_Buffering                                            0
#define QSensor_AlwaysOn                                             1
#define QSensor_GeoValues                                            2
#define QSensor_FieldOfView                                          3
#define QSensor_AccelerationMode                                     4
#define QSensor_SkipDuplicates                                       5
#define QSensor_AxesOrientation                                      6
#define QSensor_Reserved                                             257

/*
enum QSensor::AxesOrientationMode
*/
#define QSensor_FixedOrientation                                     0
#define QSensor_AutomaticOrientation                                 1
#define QSensor_UserOrientation                                      2

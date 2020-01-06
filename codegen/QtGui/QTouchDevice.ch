%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

/*
enum QTouchDevice::DeviceType
*/
#define QTouchDevice_TouchScreen                                     0
#define QTouchDevice_TouchPad                                        1

/*
enum QTouchDevice::CapabilityFlag
*/
#define QTouchDevice_Position                                        0x0001
#define QTouchDevice_Area                                            0x0002
#define QTouchDevice_Pressure                                        0x0004
#define QTouchDevice_Velocity                                        0x0008
#define QTouchDevice_RawPositions                                    0x0010
#define QTouchDevice_NormalizedPosition                              0x0020

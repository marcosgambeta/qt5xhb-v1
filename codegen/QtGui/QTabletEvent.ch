%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

/*
enum QTabletEvent::PointerType
*/
#define QTabletEvent_UnknownPointer                                  0
#define QTabletEvent_Pen                                             1
#define QTabletEvent_Cursor                                          2
#define QTabletEvent_Eraser                                          3

/*
enum QTabletEvent::TabletDevice
*/
#define QTabletEvent_NoDevice                                        0
#define QTabletEvent_Puck                                            1
#define QTabletEvent_Stylus                                          2
#define QTabletEvent_Airbrush                                        3
#define QTabletEvent_FourDMouse                                      4
#define QTabletEvent_RotationStylus                                  6

%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

/*
enum QVideoSurfaceFormat::Direction
*/
#define QVideoSurfaceFormat_TopToBottom                              0
#define QVideoSurfaceFormat_BottomToTop                              1

/*
enum QVideoSurfaceFormat::YCbCrColorSpace
*/
#define QVideoSurfaceFormat_YCbCr_Undefined                          0
#define QVideoSurfaceFormat_YCbCr_BT601                              1
#define QVideoSurfaceFormat_YCbCr_BT709                              2
#define QVideoSurfaceFormat_YCbCr_xvYCC601                           3
#define QVideoSurfaceFormat_YCbCr_xvYCC709                           4
#define QVideoSurfaceFormat_YCbCr_JPEG                               5
#define QVideoSurfaceFormat_YCbCr_CustomMatrix                       6

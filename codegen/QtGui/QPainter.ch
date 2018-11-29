%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

/*
enum QPainter::CompositionMode
*/
#define QPainter_CompositionMode_SourceOver                          0
#define QPainter_CompositionMode_DestinationOver                     1
#define QPainter_CompositionMode_Clear                               2
#define QPainter_CompositionMode_Source                              3
#define QPainter_CompositionMode_Destination                         4
#define QPainter_CompositionMode_SourceIn                            5
#define QPainter_CompositionMode_DestinationIn                       6
#define QPainter_CompositionMode_SourceOut                           7
#define QPainter_CompositionMode_DestinationOut                      8
#define QPainter_CompositionMode_SourceAtop                          9
#define QPainter_CompositionMode_DestinationAtop                     10
#define QPainter_CompositionMode_Xor                                 11
#define QPainter_CompositionMode_Plus                                12
#define QPainter_CompositionMode_Multiply                            13
#define QPainter_CompositionMode_Screen                              14
#define QPainter_CompositionMode_Overlay                             15
#define QPainter_CompositionMode_Darken                              16
#define QPainter_CompositionMode_Lighten                             17
#define QPainter_CompositionMode_ColorDodge                          18
#define QPainter_CompositionMode_ColorBurn                           19
#define QPainter_CompositionMode_HardLight                           20
#define QPainter_CompositionMode_SoftLight                           21
#define QPainter_CompositionMode_Difference                          22
#define QPainter_CompositionMode_Exclusion                           23
#define QPainter_RasterOp_SourceOrDestination                        24
#define QPainter_RasterOp_SourceAndDestination                       25
#define QPainter_RasterOp_SourceXorDestination                       26
#define QPainter_RasterOp_NotSourceAndNotDestination                 27
#define QPainter_RasterOp_NotSourceOrNotDestination                  28
#define QPainter_RasterOp_NotSourceXorDestination                    29
#define QPainter_RasterOp_NotSource                                  30
#define QPainter_RasterOp_NotSourceAndDestination                    31
#define QPainter_RasterOp_SourceAndNotDestination                    32

/*
enum QPainter::PixmapFragmentHint
flags QPainter::PixmapFragmentHints
*/
#define QPainter_OpaqueHint                                          0x01

/*
enum QPainter::RenderHint
flags QPainter::RenderHints
*/
#define QPainter_Antialiasing                                        0x01
#define QPainter_TextAntialiasing                                    0x02
#define QPainter_SmoothPixmapTransform                               0x04
#define QPainter_HighQualityAntialiasing                             0x08
#define QPainter_NonCosmeticDefaultPen                               0x10

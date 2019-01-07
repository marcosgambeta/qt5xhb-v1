%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtQuick

$header

/*
enum QQuickPaintedItem::PerformanceHint
flags QQuickPaintedItem::PerformanceHints
*/
#define QQuickPaintedItem_FastFBOResizing                            0x1

/*
enum QQuickPaintedItem::RenderTarget
*/
#define QQuickPaintedItem_Image                                      0
#define QQuickPaintedItem_FramebufferObject                          1
#define QQuickPaintedItem_InvertedYFramebufferObject                 2

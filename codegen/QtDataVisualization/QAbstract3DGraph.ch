%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDataVisualization

$header

/*
enum QAbstract3DGraph::SelectionFlag
flags QAbstract3DGraph::SelectionFlags
*/
#define QAbstract3DGraph_SelectionNone                               0
#define QAbstract3DGraph_SelectionItem                               1
#define QAbstract3DGraph_SelectionRow                                2
#define QAbstract3DGraph_SelectionItemAndRow                         hb_bitor( QAbstract3DGraph_SelectionItem, QAbstract3DGraph_SelectionRow )
#define QAbstract3DGraph_SelectionColumn                             4
#define QAbstract3DGraph_SelectionItemAndColumn                      hb_bitor( QAbstract3DGraph_SelectionItem, QAbstract3DGraph_SelectionColumn )
#define QAbstract3DGraph_SelectionRowAndColumn                       hb_bitor( QAbstract3DGraph_SelectionRow, QAbstract3DGraph_SelectionColumn )
#define QAbstract3DGraph_SelectionItemRowAndColumn                   hb_bitor( hb_bitor( QAbstract3DGraph_SelectionItem, QAbstract3DGraph_SelectionRow ), QAbstract3DGraph_SelectionColumn )
#define QAbstract3DGraph_SelectionSlice                              8
#define QAbstract3DGraph_SelectionMultiSeries                        16

/*
enum QAbstract3DGraph::ShadowQuality
*/
#define QAbstract3DGraph_ShadowQualityNone                           0
#define QAbstract3DGraph_ShadowQualityLow                            1
#define QAbstract3DGraph_ShadowQualityMedium                         2
#define QAbstract3DGraph_ShadowQualityHigh                           3
#define QAbstract3DGraph_ShadowQualitySoftLow                        4
#define QAbstract3DGraph_ShadowQualitySoftMedium                     5
#define QAbstract3DGraph_ShadowQualitySoftHigh                       6

/*
enum QAbstract3DGraph::ElementType
*/
#define QAbstract3DGraph_ElementNone                                 0
#define QAbstract3DGraph_ElementSeries                               1
#define QAbstract3DGraph_ElementAxisXLabel                           2
#define QAbstract3DGraph_ElementAxisYLabel                           3
#define QAbstract3DGraph_ElementAxisZLabel                           4
#define QAbstract3DGraph_ElementCustomItem                           5

/*
enum QAbstract3DGraph::OptimizationHint
flags QAbstract3DGraph::OptimizationHints
*/
#define QAbstract3DGraph_OptimizationDefault                         0
#define QAbstract3DGraph_OptimizationStatic                          1

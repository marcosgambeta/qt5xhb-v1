%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtQuick

$header

/*
enum QQuickView::ResizeMode
*/
#define QQuickView_SizeViewToRootObject                              0
#define QQuickView_SizeRootObjectToView                              1

/*
enum QQuickView::Status
*/
#define QQuickView_Null                                              0
#define QQuickView_Ready                                             1
#define QQuickView_Loading                                           2
#define QQuickView_Error                                             3

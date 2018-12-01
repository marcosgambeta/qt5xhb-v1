%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtQuickWidgets

$header

/*
enum QQuickWidget::ResizeMode
*/
#define QQuickWidget_SizeViewToRootObject                            0
#define QQuickWidget_SizeRootObjectToView                            1

/*
enum QQuickWidget::Status
*/
#define QQuickWidget_Null                                            0
#define QQuickWidget_Ready                                           1
#define QQuickWidget_Loading                                         2
#define QQuickWidget_Error                                           3

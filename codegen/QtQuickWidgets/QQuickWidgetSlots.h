%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtQuickWidgets

$header

$includes=5,3,0

$beginSlotsClass
$signal=5,3,0|statusChanged( QQuickWidget::Status status )
$signal=5,3,0|sceneGraphError( QQuickWindow::SceneGraphError error, const QString & message )
$endSlotsClass

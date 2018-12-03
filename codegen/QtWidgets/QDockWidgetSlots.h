%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

$includes

$beginSlotsClass
$signal=|allowedAreasChanged( Qt::DockWidgetAreas allowedAreas )
$signal=|dockLocationChanged( Qt::DockWidgetArea area )
$signal=|featuresChanged( QDockWidget::DockWidgetFeatures features )
$signal=|topLevelChanged( bool topLevel )
$signal=|visibilityChanged( bool visible )
$endSlotsClass

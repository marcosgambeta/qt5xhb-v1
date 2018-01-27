%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

$slot=|allowedAreasChanged( Qt::DockWidgetAreas allowedAreas )
$slot=|dockLocationChanged( Qt::DockWidgetArea area )
$slot=|featuresChanged( QDockWidget::DockWidgetFeatures features )
$slot=|topLevelChanged( bool topLevel )
$slot=|visibilityChanged( bool visible )

$signalMethod=|allowedAreasChanged(Qt::DockWidgetAreas)
$signalMethod=|dockLocationChanged(Qt::DockWidgetArea)
$signalMethod=|featuresChanged(QDockWidget::DockWidgetFeatures)
$signalMethod=|topLevelChanged(bool)
$signalMethod=|visibilityChanged(bool)

$endSlotsClass

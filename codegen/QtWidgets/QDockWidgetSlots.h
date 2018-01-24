%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
  void allowedAreasChanged ( Qt::DockWidgetAreas allowedAreas );
  void dockLocationChanged ( Qt::DockWidgetArea area );
  void featuresChanged ( QDockWidget::DockWidgetFeatures features );
  void topLevelChanged ( bool topLevel );
  void visibilityChanged ( bool visible );
$endSlotsClass

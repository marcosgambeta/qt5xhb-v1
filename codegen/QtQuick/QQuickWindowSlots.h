%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
  void afterRendering();
  void beforeRendering();
  void beforeSynchronizing();
  void colorChanged(const QColor & color);
  void frameSwapped();
  void sceneGraphInitialized();
  void sceneGraphInvalidated();
$endSlotsClass

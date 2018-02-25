%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

using namespace QtDataVisualization;

$beginSlotsClass
$signal=|axisXChanged( QValue3DAxis * axis )
$signal=|axisYChanged( QValue3DAxis * axis )
$signal=|axisZChanged( QValue3DAxis * axis )
$signal=|flipHorizontalGridChanged( bool flip )
$signal=|selectedSeriesChanged( QSurface3DSeries * series )
$endSlotsClass

%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

using namespace QtCharts;

$beginSlotsClass
$signal=|void borderColorChanged( QColor color );
$signal=|void colorChanged( QColor color );
$signal=|void markerShapeChanged( QScatterSeries::MarkerShape shape );
$signal=|void markerSizeChanged( qreal size );
$endSlotsClass

%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes=5,7,0

using namespace QtCharts;

$beginSlotsClass
$signal=5,7,0|void backgroundVisibleChanged( bool visible )
$signal=5,7,0|void borderColorChanged( QColor color )
$signal=5,7,0|void colorChanged( QColor color )
$signal=5,7,0|void fontChanged( QFont font )
$signal=5,7,0|void labelColorChanged( QColor color )
$signal=5,9,0|void markerShapeChanged( QLegend::MarkerShape shape )
$signal=5,7,0|void reverseMarkersChanged( bool reverseMarkers )
$signal=5,7,0|void showToolTipsChanged( bool showToolTips )
$endSlotsClass

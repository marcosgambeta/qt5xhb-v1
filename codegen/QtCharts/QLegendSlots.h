%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCharts

$header

$includes=5,7,0

using namespace QtCharts;

$beginSlotsClass
$signal=5,7,0|backgroundVisibleChanged( bool visible )
$signal=5,7,0|borderColorChanged( QColor color )
$signal=5,7,0|colorChanged( QColor color )
$signal=5,7,0|fontChanged( QFont font )
$signal=5,7,0|labelColorChanged( QColor color )
$signal=5,9,0|markerShapeChanged( QLegend::MarkerShape shape )
$signal=5,7,0|reverseMarkersChanged( bool reverseMarkers )
$signal=5,7,0|showToolTipsChanged( bool showToolTips )
$endSlotsClass

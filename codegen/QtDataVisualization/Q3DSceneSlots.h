%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDataVisualization

$header

$includes

using namespace QtDataVisualization;

$beginSlotsClass
$signal=|activeCameraChanged( Q3DCamera * camera )
$signal=|activeLightChanged( Q3DLight * light )
$signal=|devicePixelRatioChanged( float pixelRatio )
$signal=|graphPositionQueryChanged( const QPoint & position )
$signal=|primarySubViewportChanged( const QRect & subViewport )
$signal=|secondarySubviewOnTopChanged( bool isSecondaryOnTop )
$signal=|secondarySubViewportChanged( const QRect & subViewport )
$signal=|selectionQueryPositionChanged( const QPoint & position )
$signal=|slicingActiveChanged( bool isSlicingActive )
$signal=|viewportChanged( const QRect & viewport )
$endSlotsClass

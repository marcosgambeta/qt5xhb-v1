%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

using namespace QtDataVisualization;

$beginSlotsClass
$signal=|void activeCameraChanged( Q3DCamera * camera )
$signal=|void activeLightChanged( Q3DLight * light )
$signal=|void devicePixelRatioChanged( float pixelRatio )
$signal=|void graphPositionQueryChanged( const QPoint & position )
$signal=|void primarySubViewportChanged( const QRect & subViewport )
$signal=|void secondarySubviewOnTopChanged( bool isSecondaryOnTop )
$signal=|void secondarySubViewportChanged( const QRect & subViewport )
$signal=|void selectionQueryPositionChanged( const QPoint & position )
$signal=|void slicingActiveChanged( bool isSlicingActive )
$signal=|void viewportChanged( const QRect & viewport )
$endSlotsClass

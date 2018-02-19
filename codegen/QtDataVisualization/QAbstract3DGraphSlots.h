%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

using namespace QtDataVisualization;

$beginSlotsClass
$signal=|void activeInputHandlerChanged( QAbstract3DInputHandler * inputHandler )
$signal=|void activeThemeChanged( Q3DTheme * theme )
$signal=|void aspectRatioChanged( qreal ratio )
$signal=|void currentFpsChanged( qreal fps )
$signal=|void horizontalAspectRatioChanged( qreal ratio )
$signal=|void localeChanged( const QLocale & locale )
$signal=|void marginChanged( qreal margin )
$signal=|void measureFpsChanged( bool enabled )
$signal=|void optimizationHintsChanged( QAbstract3DGraph::OptimizationHints hints )
$signal=|void orthoProjectionChanged( bool enabled )
$signal=|void polarChanged( bool enabled )
$signal=|void queriedGraphPositionChanged( const QVector3D & data )
$signal=|void radialLabelOffsetChanged( float offset )
$signal=|void reflectionChanged( bool enabled )
$signal=|void reflectivityChanged( qreal reflectivity )
$signal=|void selectedElementChanged( QAbstract3DGraph::ElementType type )
$signal=|void selectionModeChanged( QAbstract3DGraph::SelectionFlags mode )
$signal=|void shadowQualityChanged( QAbstract3DGraph::ShadowQuality quality )
$endSlotsClass

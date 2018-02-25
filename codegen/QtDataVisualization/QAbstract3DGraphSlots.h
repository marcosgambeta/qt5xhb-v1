%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

using namespace QtDataVisualization;

$beginSlotsClass
$signal=|activeInputHandlerChanged( QAbstract3DInputHandler * inputHandler )
$signal=|activeThemeChanged( Q3DTheme * theme )
$signal=|aspectRatioChanged( qreal ratio )
$signal=|currentFpsChanged( qreal fps )
$signal=|horizontalAspectRatioChanged( qreal ratio )
$signal=|localeChanged( const QLocale & locale )
$signal=|marginChanged( qreal margin )
$signal=|measureFpsChanged( bool enabled )
$signal=|optimizationHintsChanged( QAbstract3DGraph::OptimizationHints hints )
$signal=|orthoProjectionChanged( bool enabled )
$signal=|polarChanged( bool enabled )
$signal=|queriedGraphPositionChanged( const QVector3D & data )
$signal=|radialLabelOffsetChanged( float offset )
$signal=|reflectionChanged( bool enabled )
$signal=|reflectivityChanged( qreal reflectivity )
$signal=|selectedElementChanged( QAbstract3DGraph::ElementType type )
$signal=|selectionModeChanged( QAbstract3DGraph::SelectionFlags mode )
$signal=|shadowQualityChanged( QAbstract3DGraph::ShadowQuality quality )
$endSlotsClass

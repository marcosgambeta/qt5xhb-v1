%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDataVisualization

$header

$includes

$beginSlotsClass
$slot=|activeInputHandlerChanged( QAbstract3DInputHandler * inputHandler )
$slot=|activeThemeChanged( Q3DTheme * theme )
$slot=|aspectRatioChanged( qreal ratio )
$slot=|currentFpsChanged( qreal fps )
$slot=|horizontalAspectRatioChanged( qreal ratio )
$slot=|localeChanged( const QLocale & locale )
$slot=|marginChanged( qreal margin )
$slot=|measureFpsChanged( bool enabled )
$slot=|optimizationHintsChanged( QAbstract3DGraph::OptimizationHints hints )
$slot=|orthoProjectionChanged( bool enabled )
$slot=|polarChanged( bool enabled )
$slot=|queriedGraphPositionChanged( const QVector3D & data )
$slot=|radialLabelOffsetChanged( float offset )
$slot=|reflectionChanged( bool enabled )
$slot=|reflectivityChanged( qreal reflectivity )
$slot=|selectedElementChanged( QAbstract3DGraph::ElementType type )
$slot=|selectionModeChanged( QAbstract3DGraph::SelectionFlags mode )
$slot=|shadowQualityChanged( QAbstract3DGraph::ShadowQuality quality )
$endSlotsClass

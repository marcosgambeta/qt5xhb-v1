%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCharts

$header

$includes=5,7,0

using namespace QtCharts;

$beginSlotsClass
$signal=5,7,0|colorChanged( QColor color )
$signal=5,7,0|gridLineColorChanged( const QColor & color )
$signal=5,7,0|gridLinePenChanged( const QPen & pen )
$signal=5,7,0|gridVisibleChanged( bool visible )
$signal=5,7,0|labelsAngleChanged( int angle )
$signal=5,7,0|labelsBrushChanged( const QBrush & brush )
$signal=5,7,0|labelsColorChanged( QColor color )
$signal=5,7,0|labelsFontChanged( const QFont & pen )
$signal=5,7,0|labelsVisibleChanged( bool visible )
$signal=5,7,0|linePenChanged( const QPen & pen )
$signal=5,7,0|lineVisibleChanged( bool visible )
$signal=5,7,0|minorGridLineColorChanged( const QColor & color )
$signal=5,7,0|minorGridLinePenChanged( const QPen & pen )
$signal=5,7,0|minorGridVisibleChanged( bool visible )
$signal=5,7,0|reverseChanged( bool reverse )
$signal=5,7,0|shadesBorderColorChanged( QColor color )
$signal=5,7,0|shadesBrushChanged( const QBrush & brush )
$signal=5,7,0|shadesColorChanged( QColor color )
$signal=5,7,0|shadesPenChanged( const QPen & pen )
$signal=5,7,0|shadesVisibleChanged( bool visible )
$signal=5,7,0|titleBrushChanged( const QBrush & brush )
$signal=5,7,0|titleFontChanged( const QFont & font )
$signal=5,7,0|titleTextChanged( const QString & title )
$signal=5,7,0|titleVisibleChanged( bool visible )
$signal=5,7,0|visibleChanged( bool visible )
$endSlotsClass

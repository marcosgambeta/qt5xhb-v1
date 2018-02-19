%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes=5,7,0

using namespace QtCharts;

$beginSlotsClass
$signal=5,7,0|void colorChanged( QColor color )
$signal=5,7,0|void gridLineColorChanged( const QColor & color )
$signal=5,7,0|void gridLinePenChanged( const QPen & pen )
$signal=5,7,0|void gridVisibleChanged( bool visible )
$signal=5,7,0|void labelsAngleChanged( int angle )
$signal=5,7,0|void labelsBrushChanged( const QBrush & brush )
$signal=5,7,0|void labelsColorChanged( QColor color )
$signal=5,7,0|void labelsFontChanged( const QFont & pen )
$signal=5,7,0|void labelsVisibleChanged( bool visible )
$signal=5,7,0|void linePenChanged( const QPen & pen )
$signal=5,7,0|void lineVisibleChanged( bool visible )
$signal=5,7,0|void minorGridLineColorChanged( const QColor & color )
$signal=5,7,0|void minorGridLinePenChanged( const QPen & pen )
$signal=5,7,0|void minorGridVisibleChanged( bool visible )
$signal=5,7,0|void reverseChanged( bool reverse )
$signal=5,7,0|void shadesBorderColorChanged( QColor color )
$signal=5,7,0|void shadesBrushChanged( const QBrush & brush )
$signal=5,7,0|void shadesColorChanged( QColor color )
$signal=5,7,0|void shadesPenChanged( const QPen & pen )
$signal=5,7,0|void shadesVisibleChanged( bool visible )
$signal=5,7,0|void titleBrushChanged( const QBrush & brush )
$signal=5,7,0|void titleFontChanged( const QFont & font )
$signal=5,7,0|void titleTextChanged( const QString & title )
$signal=5,7,0|void titleVisibleChanged( bool visible )
$signal=5,7,0|void visibleChanged( bool visible )
$endSlotsClass

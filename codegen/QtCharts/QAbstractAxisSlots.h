%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

using namespace QtCharts;

$beginSlotsClass
$signal=|void colorChanged( QColor color )
$signal=|void gridLineColorChanged( const QColor & color )
$signal=|void gridLinePenChanged( const QPen & pen )
$signal=|void gridVisibleChanged( bool visible )
$signal=|void labelsAngleChanged( int angle )
$signal=|void labelsBrushChanged( const QBrush & brush )
$signal=|void labelsColorChanged( QColor color )
$signal=|void labelsFontChanged( const QFont & pen )
$signal=|void labelsVisibleChanged( bool visible )
$signal=|void linePenChanged( const QPen & pen )
$signal=|void lineVisibleChanged( bool visible )
$signal=|void minorGridLineColorChanged( const QColor & color )
$signal=|void minorGridLinePenChanged( const QPen & pen )
$signal=|void minorGridVisibleChanged( bool visible )
$signal=|void reverseChanged( bool reverse )
$signal=|void shadesBorderColorChanged( QColor color )
$signal=|void shadesBrushChanged( const QBrush & brush )
$signal=|void shadesColorChanged( QColor color )
$signal=|void shadesPenChanged( const QPen & pen )
$signal=|void shadesVisibleChanged( bool visible )
$signal=|void titleBrushChanged( const QBrush & brush )
$signal=|void titleFontChanged( const QFont & font )
$signal=|void titleTextChanged( const QString & title )
$signal=|void titleVisibleChanged( bool visible )
$signal=|void visibleChanged( bool visible )
$endSlotsClass

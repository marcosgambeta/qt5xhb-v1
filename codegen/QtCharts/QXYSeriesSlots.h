%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes=5,7,0

using namespace QtCharts;

$beginSlotsClass
$signal=5,7,0|void clicked( const QPointF & point )
$signal=5,7,0|void colorChanged( QColor color )
$signal=5,7,0|void doubleClicked( const QPointF & point )
$signal=5,7,0|void hovered( const QPointF & point, bool state )
$signal=5,7,0|void penChanged( const QPen & pen )
$signal=5,7,0|void pointAdded( int index )
$signal=5,7,0|void pointLabelsClippingChanged( bool clipping )
$signal=5,7,0|void pointLabelsColorChanged( const QColor & color )
$signal=5,7,0|void pointLabelsFontChanged( const QFont & font )
$signal=5,7,0|void pointLabelsFormatChanged( const QString & format )
$signal=5,7,0|void pointLabelsVisibilityChanged( bool visible )
$signal=5,7,0|void pointRemoved( int index )
$signal=5,7,0|void pointReplaced( int index )
$signal=5,7,0|void pointsRemoved( int index, int count )
$signal=5,7,0|void pointsReplaced()
$signal=5,7,0|void pressed( const QPointF & point )
$signal=5,7,0|void released( const QPointF & point )
$endSlotsClass

%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void clicked( const QPointF & point );
$signal=|void colorChanged( QColor color );
$signal=|void doubleClicked( const QPointF & point );
$signal=|void hovered( const QPointF & point, bool state );
$signal=|void penChanged( const QPen & pen );
$signal=|void pointAdded( int index );
$signal=|void pointLabelsClippingChanged( bool clipping );
$signal=|void pointLabelsColorChanged( const QColor & color );
$signal=|void pointLabelsFontChanged( const QFont & font );
$signal=|void pointLabelsFormatChanged( const QString & format );
$signal=|void pointLabelsVisibilityChanged( bool visible );
$signal=|void pointRemoved( int index );
$signal=|void pointReplaced( int index );
$signal=|void pointsRemoved( int index, int count );
$signal=|void pointsReplaced();
$signal=|void pressed( const QPointF & point );
$signal=|void released( const QPointF & point );
$endSlotsClass

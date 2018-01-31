%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

using namespace QtCharts;

$beginSlotsClass
$signal=|void borderColorChanged( QColor color );
$signal=|void clicked( const QPointF & point );
$signal=|void colorChanged( QColor color );
$signal=|void doubleClicked( const QPointF & point );
$signal=|void hovered( const QPointF & point, bool state );
$signal=|void pointLabelsClippingChanged( bool clipping );
$signal=|void pointLabelsColorChanged( const QColor & color );
$signal=|void pointLabelsFontChanged( const QFont & font );
$signal=|void pointLabelsFormatChanged( const QString & format );
$signal=|void pointLabelsVisibilityChanged( bool visible );
$signal=|void pressed( const QPointF & point );
$signal=|void released( const QPointF & point );
$signal=|void selected();
$endSlotsClass

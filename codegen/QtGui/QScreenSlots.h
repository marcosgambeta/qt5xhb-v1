%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void geometryChanged( const QRect & geometry )
$signal=|void physicalSizeChanged( const QSizeF & size )
$signal=|void physicalDotsPerInchChanged( qreal dpi )
$signal=|void logicalDotsPerInchChanged( qreal dpi )
$signal=|void virtualGeometryChanged( const QRect & rect )
$signal=|void primaryOrientationChanged( Qt::ScreenOrientation orientation )
$signal=|void orientationChanged( Qt::ScreenOrientation orientation )
$signal=|void refreshRateChanged( qreal refreshRate )
$endSlotsClass

%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

$includes

$beginSlotsClass
$signal=|geometryChanged( const QRect & geometry )
$signal=|physicalSizeChanged( const QSizeF & size )
$signal=|physicalDotsPerInchChanged( qreal dpi )
$signal=|logicalDotsPerInchChanged( qreal dpi )
$signal=|virtualGeometryChanged( const QRect & rect )
$signal=|primaryOrientationChanged( Qt::ScreenOrientation orientation )
$signal=|orientationChanged( Qt::ScreenOrientation orientation )
$signal=|refreshRateChanged( qreal refreshRate )
$endSlotsClass

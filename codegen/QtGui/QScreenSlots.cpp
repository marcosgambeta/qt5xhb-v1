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
$slot=|geometryChanged( const QRect & geometry )
$slot=|physicalSizeChanged( const QSizeF & size )
$slot=|physicalDotsPerInchChanged( qreal dpi )
$slot=|logicalDotsPerInchChanged( qreal dpi )
$slot=|virtualGeometryChanged( const QRect & rect )
$slot=|primaryOrientationChanged( Qt::ScreenOrientation orientation )
$slot=|orientationChanged( Qt::ScreenOrientation orientation )
$slot=|refreshRateChanged( qreal refreshRate )
$endSlotsClass

%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

$slot=|contentOrientationChanged( Qt::ScreenOrientation orientation )
$slot=|focusObjectChanged( QObject * focusObject )
$slot=|heightChanged( int arg )
$slot=|screenChanged( QScreen * screen )
$slot=|visibleChanged( bool arg )
$slot=|widthChanged( int arg )
$slot=|windowModalityChanged( Qt::WindowModality windowModality )
$slot=|xChanged( int arg )
$slot=|yChanged( int arg )

$signalMethod=|contentOrientationChanged(Qt::ScreenOrientation)
$signalMethod=|focusObjectChanged(QObject*)
$signalMethod=|heightChanged(int)
$signalMethod=|screenChanged(QScreen*)
$signalMethod=|visibleChanged(bool)
$signalMethod=|widthChanged(int)
$signalMethod=|windowModalityChanged(Qt::WindowModality)
$signalMethod=|xChanged(int)
$signalMethod=|yChanged(int)

$endSlotsClass

%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|baseChanged( qreal base )
$slot=|labelFormatChanged( const QString & format )
$slot=|maxChanged( qreal max )
$slot=|minChanged( qreal min )
$slot=|minorTickCountChanged( int minorTickCount )
$slot=|rangeChanged( qreal min, qreal max )
$slot=|tickCountChanged( int tickCount )
$endSlotsClass

$signalMethod=|baseChanged(qreal)
$signalMethod=|labelFormatChanged(QString)
$signalMethod=|maxChanged(qreal)
$signalMethod=|minChanged(qreal)
$signalMethod=|minorTickCountChanged(int)
$signalMethod=|rangeChanged(qreal,qreal)
$signalMethod=|tickCountChanged(int)

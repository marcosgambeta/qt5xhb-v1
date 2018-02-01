%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|axisXChanged( QValue3DAxis * axis )
$slot=|axisYChanged( QValue3DAxis * axis )
$slot=|axisZChanged( QValue3DAxis * axis )
$slot=|selectedSeriesChanged( QScatter3DSeries * series )
$endSlotsClass

$signalMethod=|axisXChanged(QValue3DAxis*)
$signalMethod=|axisYChanged(QValue3DAxis*)
$signalMethod=|axisZChanged(QValue3DAxis*)
$signalMethod=|selectedSeriesChanged(QScatter3DSeries*)

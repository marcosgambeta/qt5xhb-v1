%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|changed( const QList<QRectF> & region )
$slot=|sceneRectChanged( const QRectF & rect )
$slot=|selectionChanged()
$endSlotsClass

$signalMethod=|changed(QList<QRectF>)
$signalMethod=|sceneRectChanged(QRectF)
$signalMethod=|selectionChanged()

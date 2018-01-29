%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|formatChanged( QString format )
$slot=|maxChanged( QDateTime max )
$slot=|minChanged( QDateTime min )
$slot=|rangeChanged( QDateTime min, QDateTime max )
$slot=|tickCountChanged( int tick )
$endSlotsClass

$signalMethod=|formatChanged(QString)
$signalMethod=|maxChanged(QDateTime)
$signalMethod=|minChanged(QDateTime)
$signalMethod=|rangeChanged(QDateTime,QDateTime)
$signalMethod=|tickCountChanged(int)

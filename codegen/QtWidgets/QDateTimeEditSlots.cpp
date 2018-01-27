%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|dateChanged( const QDate & date )
$slot=|dateTimeChanged( const QDateTime & datetime )
$slot=|timeChanged( const QTime & time )
$endSlotsClass

$signalMethod=|dateChanged(QDate)
$signalMethod=|dateTimeChanged(QDateTime)
$signalMethod=|timeChanged(QTime)

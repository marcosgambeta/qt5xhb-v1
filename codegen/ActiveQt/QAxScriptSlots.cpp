%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

$slot=|entered()
$slot=|error( int code, const QString & description, int sourcePosition, const QString & sourceText )
$slot=|finished()
$slot=|finished( const QVariant & result )
$slot=|finished( int code, const QString & source, const QString & description, const QString & help )
$slot=|stateChanged( int state )

$signalMethod=|entered()
$signalMethod=|error(int,QString,int,QString)
$beginGroup
$signalMethod=|finished()
$signalMethod=|finished(QVariant)
$signalMethod=|finished(int,QString,QString,QString)
$endGroup
$signalMethod=|stateChanged(int)

$endSlotsClass

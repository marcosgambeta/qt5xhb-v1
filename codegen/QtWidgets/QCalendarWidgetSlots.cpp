%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|activated( const QDate & date )
$slot=|clicked( const QDate & date )
$slot=|currentPageChanged( int year, int month )
$slot=|selectionChanged()
$endSlotsClass

$signalMethod=|activated(QDate)
$signalMethod=|clicked(QDate)
$signalMethod=|currentPageChanged(int,int)
$signalMethod=|selectionChanged()

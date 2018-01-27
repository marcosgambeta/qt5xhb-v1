%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

$slot=|indexingFinished()
$slot=|indexingStarted()
$slot=|searchingFinished( int hits )
$slot=|searchingStarted()

$signalMethod=|indexingFinished()
$signalMethod=|indexingStarted()
$signalMethod=|searchingFinished(int)
$signalMethod=|searchingStarted()

$endSlotsClass

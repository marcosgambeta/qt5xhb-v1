%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|added( QList<QPieSlice*> slices )
$slot=|clicked( QPieSlice * slice )
$slot=|countChanged()
$slot=|doubleClicked( QPieSlice * slice )
$slot=|hovered( QPieSlice * slice, bool state )
$slot=|pressed( QPieSlice * slice )
$slot=|released( QPieSlice * slice )
$slot=|removed( QList<QPieSlice*> slices )
$slot=|sumChanged()
$endSlotsClass

$signalMethod=|added(QList<QPieSlice*>)
$signalMethod=|clicked(QPieSlice*)
$signalMethod=|countChanged()
$signalMethod=|doubleClicked(QPieSlice*)
$signalMethod=|hovered(QPieSlice*,bool)
$signalMethod=|pressed(QPieSlice*)
$signalMethod=|released(QPieSlice*)
$signalMethod=|removed(QList<QPieSlice*>)
$signalMethod=|sumChanged()

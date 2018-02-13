%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

using namespace QtCharts;

$beginSlotsClass
$signal=|void added( QList<QPieSlice*> slices )
$signal=|void clicked( QPieSlice * slice )
$signal=|void countChanged()
$signal=|void doubleClicked( QPieSlice * slice )
$signal=|void hovered( QPieSlice * slice, bool state )
$signal=|void pressed( QPieSlice * slice )
$signal=|void released( QPieSlice * slice )
$signal=|void removed( QList<QPieSlice*> slices )
$signal=|void sumChanged()
$endSlotsClass

%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

using namespace QtCharts;

$beginSlotsClass
$signal=5,7,0|void added( QList<QPieSlice*> slices )
$signal=5,7,0|void clicked( QPieSlice * slice )
$signal=5,7,0|void countChanged()
$signal=5,7,0|void doubleClicked( QPieSlice * slice )
$signal=5,7,0|void hovered( QPieSlice * slice, bool state )
$signal=5,7,0|void pressed( QPieSlice * slice )
$signal=5,7,0|void released( QPieSlice * slice )
$signal=5,7,0|void removed( QList<QPieSlice*> slices )
$signal=5,7,0|void sumChanged()
$endSlotsClass

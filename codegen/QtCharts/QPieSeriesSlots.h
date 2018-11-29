%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCharts

$header

$includes=5,7,0

using namespace QtCharts;

$beginSlotsClass
$signal=5,7,0|added( QList<QPieSlice*> slices )
$signal=5,7,0|clicked( QPieSlice * slice )
$signal=5,7,0|countChanged()
$signal=5,7,0|doubleClicked( QPieSlice * slice )
$signal=5,7,0|hovered( QPieSlice * slice, bool state )
$signal=5,7,0|pressed( QPieSlice * slice )
$signal=5,7,0|released( QPieSlice * slice )
$signal=5,7,0|removed( QList<QPieSlice*> slices )
$signal=5,7,0|sumChanged()
$endSlotsClass

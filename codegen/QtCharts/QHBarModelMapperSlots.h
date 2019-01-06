%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCharts

$header

$includes=5,7,0

using namespace QtCharts;

$beginSlotsClass
$signal=5,7,0|columnCountChanged()
$signal=5,7,0|firstBarSetRowChanged()
$signal=5,7,0|firstColumnChanged()
$signal=5,7,0|lastBarSetRowChanged()
$signal=5,7,0|modelReplaced()
$signal=5,7,0|seriesReplaced()
$endSlotsClass

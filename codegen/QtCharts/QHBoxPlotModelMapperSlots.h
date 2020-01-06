%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCharts

$header

$includes=5,8,0

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
using namespace QtCharts;
#endif

$beginSlotsClass
$signal=5,8,0|columnCountChanged()
$signal=5,8,0|firstBoxSetRowChanged()
$signal=5,8,0|firstColumnChanged()
$signal=5,8,0|lastBoxSetRowChanged()
$signal=5,8,0|modelReplaced()
$signal=5,8,0|seriesReplaced()
$endSlotsClass

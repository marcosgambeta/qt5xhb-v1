%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes=5,8,0

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
using namespace QtCharts;
#endif

$beginSlotsClass
$signal=5,8,0|void columnCountChanged()
$signal=5,8,0|void firstBoxSetRowChanged()
$signal=5,8,0|void firstColumnChanged()
$signal=5,8,0|void lastBoxSetRowChanged()
$signal=5,8,0|void modelReplaced()
$signal=5,8,0|void seriesReplaced()
$endSlotsClass

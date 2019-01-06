%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCharts

$header

$includes=5,8,0

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
using namespace QtCharts;
#endif

$beginSlotsClass
$signal=5,8,0|closeRowChanged()
$signal=5,8,0|firstSetColumnChanged()
$signal=5,8,0|highRowChanged()
$signal=5,8,0|lastSetColumnChanged()
$signal=5,8,0|lowRowChanged()
$signal=5,8,0|openRowChanged()
$signal=5,8,0|timestampRowChanged()
$endSlotsClass

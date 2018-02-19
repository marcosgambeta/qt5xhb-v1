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
$signal=5,8,0|void closeRowChanged()
$signal=5,8,0|void firstSetColumnChanged()
$signal=5,8,0|void highRowChanged()
$signal=5,8,0|void lastSetColumnChanged()
$signal=5,8,0|void lowRowChanged()
$signal=5,8,0|void openRowChanged()
$signal=5,8,0|void timestampRowChanged()
$endSlotsClass

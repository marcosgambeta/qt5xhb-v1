%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCharts

$header

$includes=5,8,0

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
using namespace QtCharts;
#endif

$beginSlotsClass
$signal=5,8,0|closeColumnChanged()
$signal=5,8,0|firstSetRowChanged()
$signal=5,8,0|highColumnChanged()
$signal=5,8,0|lastSetRowChanged()
$signal=5,8,0|lowColumnChanged()
$signal=5,8,0|openColumnChanged()
$signal=5,8,0|timestampColumnChanged()
$endSlotsClass

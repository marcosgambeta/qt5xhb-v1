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
$signal=5,8,0|void closeColumnChanged()
$signal=5,8,0|void firstSetRowChanged()
$signal=5,8,0|void highColumnChanged()
$signal=5,8,0|void lastSetRowChanged()
$signal=5,8,0|void lowColumnChanged()
$signal=5,8,0|void openColumnChanged()
$signal=5,8,0|void timestampColumnChanged()
$endSlotsClass

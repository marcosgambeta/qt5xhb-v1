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
$signal=5,8,0|brushChanged()
$signal=5,8,0|clicked()
$signal=5,8,0|closeChanged()
$signal=5,8,0|doubleClicked()
$signal=5,8,0|highChanged()
$signal=5,8,0|hovered( bool status )
$signal=5,8,0|lowChanged()
$signal=5,8,0|openChanged()
$signal=5,8,0|penChanged()
$signal=5,8,0|pressed()
$signal=5,8,0|released()
$signal=5,8,0|timestampChanged()
$endSlotsClass

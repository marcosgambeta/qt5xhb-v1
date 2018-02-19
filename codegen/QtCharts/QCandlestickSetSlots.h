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
$signal=5,8,0|void brushChanged()
$signal=5,8,0|void clicked()
$signal=5,8,0|void closeChanged()
$signal=5,8,0|void doubleClicked()
$signal=5,8,0|void highChanged()
$signal=5,8,0|void hovered( bool status )
$signal=5,8,0|void lowChanged()
$signal=5,8,0|void openChanged()
$signal=5,8,0|void penChanged()
$signal=5,8,0|void pressed()
$signal=5,8,0|void released()
$signal=5,8,0|void timestampChanged()
$endSlotsClass

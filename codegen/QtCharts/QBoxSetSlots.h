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
$signal=5,7,0|brushChanged()
$signal=5,7,0|cleared()
$signal=5,7,0|clicked()
$signal=5,7,0|doubleClicked()
$signal=5,7,0|hovered( bool status )
$signal=5,7,0|penChanged()
$signal=5,7,0|pressed()
$signal=5,7,0|released()
$signal=5,7,0|valueChanged( int index )
$signal=5,7,0|valuesChanged()
$endSlotsClass

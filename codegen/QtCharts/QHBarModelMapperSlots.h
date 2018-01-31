%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

using namespace QtCharts;

$beginSlotsClass
$signal=|void columnCountChanged();
$signal=|void firstBarSetRowChanged();
$signal=|void firstColumnChanged();
$signal=|void lastBarSetRowChanged();
$signal=|void modelReplaced();
$signal=|void seriesReplaced();
$endSlotsClass

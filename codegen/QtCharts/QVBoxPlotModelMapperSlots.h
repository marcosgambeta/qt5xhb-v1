%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

using namespace QtCharts;

$beginSlotsClass
$signal=|void firstBoxSetColumnChanged();
$signal=|void firstRowChanged();
$signal=|void lastBoxSetColumnChanged();
$signal=|void modelReplaced();
$signal=|void rowCountChanged();
$signal=|void seriesReplaced();
$endSlotsClass
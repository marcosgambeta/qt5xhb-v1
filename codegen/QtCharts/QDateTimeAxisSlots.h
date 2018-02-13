%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

#include <QDateTime>

using namespace QtCharts;

$beginSlotsClass
$signal=|void formatChanged( QString format )
$signal=|void maxChanged( QDateTime max )
$signal=|void minChanged( QDateTime min )
$signal=|void rangeChanged( QDateTime min, QDateTime max )
$signal=|void tickCountChanged( int tick )
$endSlotsClass

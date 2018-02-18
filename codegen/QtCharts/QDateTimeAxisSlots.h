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
$signal=5,7,0|void formatChanged( QString format )
$signal=5,7,0|void maxChanged( QDateTime max )
$signal=5,7,0|void minChanged( QDateTime min )
$signal=5,7,0|void rangeChanged( QDateTime min, QDateTime max )
$signal=5,7,0|void tickCountChanged( int tick )
$endSlotsClass

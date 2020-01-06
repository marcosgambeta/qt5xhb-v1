%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCharts

$header

$includes=5,7,0

$beginSlotsClass
$slot=5,7,0|formatChanged( QString format )
$slot=5,7,0|maxChanged( QDateTime max )
$slot=5,7,0|minChanged( QDateTime min )
$slot=5,7,0|rangeChanged( QDateTime min, QDateTime max )
$slot=5,7,0|tickCountChanged( int tick )
$endSlotsClass

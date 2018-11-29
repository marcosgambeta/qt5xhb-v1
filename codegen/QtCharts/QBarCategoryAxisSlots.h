%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCharts

$header

$includes=5,7,0

using namespace QtCharts;

$beginSlotsClass
$signal=5,7,0|categoriesChanged()
$signal=5,7,0|countChanged()
$signal=5,7,0|maxChanged( const QString & max )
$signal=5,7,0|minChanged( const QString & min )
$signal=5,7,0|rangeChanged( const QString & min, const QString & max )
$endSlotsClass

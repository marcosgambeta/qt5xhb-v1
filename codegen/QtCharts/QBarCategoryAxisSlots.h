%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

using namespace QtCharts;

$beginSlotsClass
$signal=5,7,0|void categoriesChanged()
$signal=5,7,0|void countChanged()
$signal=5,7,0|void maxChanged( const QString & max )
$signal=5,7,0|void minChanged( const QString & min )
$signal=5,7,0|void rangeChanged( const QString & min, const QString & max )
$endSlotsClass

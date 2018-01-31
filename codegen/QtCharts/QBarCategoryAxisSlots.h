%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

using namespace QtCharts;

$beginSlotsClass
$signal=|void categoriesChanged();
$signal=|void countChanged();
$signal=|void maxChanged( const QString & max );
$signal=|void minChanged( const QString & min );
$signal=|void rangeChanged( const QString & min, const QString & max );
$endSlotsClass

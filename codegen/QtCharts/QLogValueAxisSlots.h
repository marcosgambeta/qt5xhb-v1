%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

using namespace QtCharts;

$beginSlotsClass
$signal=|void baseChanged( qreal base );
$signal=|void labelFormatChanged( const QString & format );
$signal=|void maxChanged( qreal max );
$signal=|void minChanged( qreal min );
$signal=|void minorTickCountChanged( int minorTickCount );
$signal=|void rangeChanged( qreal min, qreal max );
$signal=|void tickCountChanged( int tickCount );
$endSlotsClass

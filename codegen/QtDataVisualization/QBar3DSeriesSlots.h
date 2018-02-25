%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

using namespace QtDataVisualization;

$beginSlotsClass
$signal=|dataProxyChanged( QBarDataProxy * proxy )
$signal=|selectedBarChanged( const QPoint & position )
$signal=|meshAngleChanged( float angle )
$endSlotsClass

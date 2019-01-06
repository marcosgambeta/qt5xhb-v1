%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDataVisualization

$header

$includes

using namespace QtDataVisualization;

$beginSlotsClass
$signal=|dataProxyChanged( QScatterDataProxy * proxy )
$signal=|itemSizeChanged( float size )
$signal=|selectedItemChanged( int index )
$endSlotsClass

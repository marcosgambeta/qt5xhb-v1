%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDataVisualization

$header

$includes

using namespace QtDataVisualization;

$beginSlotsClass
$signal=|arrayReset()
$signal=|itemCountChanged( int count )
$signal=|itemsAdded( int startIndex, int count )
$signal=|itemsChanged( int startIndex, int count )
$signal=|itemsInserted( int startIndex, int count )
$signal=|itemsRemoved( int startIndex, int count )
$signal=|seriesChanged( QScatter3DSeries * series )
$endSlotsClass

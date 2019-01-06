%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDataVisualization

$header

$includes

$beginSlotsClass
$slot=|arrayReset()
$slot=|itemCountChanged( int count )
$slot=|itemsAdded( int startIndex, int count )
$slot=|itemsChanged( int startIndex, int count )
$slot=|itemsInserted( int startIndex, int count )
$slot=|itemsRemoved( int startIndex, int count )
$slot=|seriesChanged( QScatter3DSeries * series )
$endSlotsClass

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
$signal=|columnLabelsChanged()
$signal=|itemChanged( int rowIndex, int columnIndex )
$signal=|rowCountChanged( int count )
$signal=|rowLabelsChanged()
$signal=|rowsAdded( int startIndex, int count )
$signal=|rowsChanged( int startIndex, int count )
$signal=|rowsInserted( int startIndex, int count )
$signal=|rowsRemoved( int startIndex, int count )
$signal=|seriesChanged( QBar3DSeries * series )
$endSlotsClass

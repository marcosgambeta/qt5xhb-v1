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
$slot=|columnLabelsChanged()
$slot=|itemChanged( int rowIndex, int columnIndex )
$slot=|rowCountChanged( int count )
$slot=|rowLabelsChanged()
$slot=|rowsAdded( int startIndex, int count )
$slot=|rowsChanged( int startIndex, int count )
$slot=|rowsInserted( int startIndex, int count )
$slot=|rowsRemoved( int startIndex, int count )
$slot=|seriesChanged( QBar3DSeries * series )
$endSlotsClass

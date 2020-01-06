%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDataVisualization

$header

$includes

$beginSlotsClass
$slot=|arrayReset()
$slot=|columnCountChanged( int count )
$slot=|itemChanged( int rowIndex, int columnIndex )
$slot=|rowCountChanged( int count )
$slot=|rowsAdded( int startIndex, int count )
$slot=|rowsChanged( int startIndex, int count )
$slot=|rowsInserted( int startIndex, int count )
$slot=|rowsRemoved( int startIndex, int count )
$slot=|seriesChanged( QSurface3DSeries * series )
$endSlotsClass

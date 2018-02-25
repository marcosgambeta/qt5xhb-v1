%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

using namespace QtDataVisualization;

$beginSlotsClass
$signal=|arrayReset()
$signal=|columnCountChanged( int count )
$signal=|itemChanged( int rowIndex, int columnIndex )
$signal=|rowCountChanged( int count )
$signal=|rowsAdded( int startIndex, int count )
$signal=|rowsChanged( int startIndex, int count )
$signal=|rowsInserted( int startIndex, int count )
$signal=|rowsRemoved( int startIndex, int count )
$signal=|seriesChanged( QSurface3DSeries * series )
$endSlotsClass

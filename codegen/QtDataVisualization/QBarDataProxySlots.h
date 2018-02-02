%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void arrayReset();
$signal=|void columnLabelsChanged();
$signal=|void itemChanged( int rowIndex, int columnIndex );
$signal=|void rowCountChanged( int count );
$signal=|void rowLabelsChanged();
$signal=|void rowsAdded( int startIndex, int count );
$signal=|void rowsChanged( int startIndex, int count );
$signal=|void rowsInserted( int startIndex, int count );
$signal=|void rowsRemoved( int startIndex, int count );
$signal=|void seriesChanged( QBar3DSeries * series );
$endSlotsClass

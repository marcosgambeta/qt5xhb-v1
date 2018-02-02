%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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

$signalMethod=|arrayReset()
$signalMethod=|columnLabelsChanged()
$signalMethod=|itemChanged(int,int)
$signalMethod=|rowCountChanged(int)
$signalMethod=|rowLabelsChanged()
$signalMethod=|rowsAdded(int,int)
$signalMethod=|rowsChanged(int,int)
$signalMethod=|rowsInserted(int,int)
$signalMethod=|rowsRemoved(int,int)
$signalMethod=|seriesChanged(QBar3DSeries*)

%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|selectionChanged( const QItemSelection & selected, const QItemSelection & deselected )
$slot=|currentChanged( const QModelIndex & current, const QModelIndex & previous )
$slot=|currentRowChanged( const QModelIndex & current, const QModelIndex & previous )
$slot=|currentColumnChanged( const QModelIndex & current, const QModelIndex & previous )
$endSlotsClass

$signalMethod=|selectionChanged(QItemSelection,QItemSelection)
$signalMethod=|currentChanged(QModelIndex,QModelIndex)
$signalMethod=|currentRowChanged(QModelIndex,QModelIndex)
$signalMethod=|currentColumnChanged(QModelIndex,QModelIndex)

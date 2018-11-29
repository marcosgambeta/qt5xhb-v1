%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

$includes

$beginSlotsClass
$signal=|selectionChanged( const QItemSelection & selected, const QItemSelection & deselected )
$signal=|currentChanged( const QModelIndex & current, const QModelIndex & previous )
$signal=|currentRowChanged( const QModelIndex & current, const QModelIndex & previous )
$signal=|currentColumnChanged( const QModelIndex & current, const QModelIndex & previous )
$endSlotsClass

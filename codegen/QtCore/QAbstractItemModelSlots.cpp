%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

$includes

$beginSlotsClass
$slot=|columnsAboutToBeInserted( const QModelIndex & parent, int start, int end )
$slot=|columnsAboutToBeMoved( const QModelIndex & sourceParent, int sourceStart, int sourceEnd, const QModelIndex & destinationParent, int destinationColumn )
$slot=|columnsAboutToBeRemoved( const QModelIndex & parent, int start, int end )
$slot=|columnsInserted( const QModelIndex & parent, int start, int end )
$slot=|columnsMoved( const QModelIndex & sourceParent, int sourceStart, int sourceEnd, const QModelIndex & destinationParent, int destinationColumn )
$slot=|columnsRemoved( const QModelIndex & parent, int start, int end )
$slot=|dataChanged( const QModelIndex & topLeft, const QModelIndex & bottomRight )
$slot=|headerDataChanged( Qt::Orientation orientation, int first, int last )
$slot=|layoutAboutToBeChanged()
$slot=|layoutChanged()
$slot=|modelAboutToBeReset()
$slot=|modelReset()
$slot=|rowsAboutToBeInserted( const QModelIndex & parent, int start, int end )
$slot=|rowsAboutToBeMoved( const QModelIndex & sourceParent, int sourceStart, int sourceEnd, const QModelIndex & destinationParent, int destinationRow )
$slot=|rowsAboutToBeRemoved( const QModelIndex & parent, int start, int end )
$slot=|rowsInserted( const QModelIndex & parent, int start, int end )
$slot=|rowsMoved( const QModelIndex & sourceParent, int sourceStart, int sourceEnd, const QModelIndex & destinationParent, int destinationRow )
$slot=|rowsRemoved( const QModelIndex & parent, int start, int end )
$endSlotsClass

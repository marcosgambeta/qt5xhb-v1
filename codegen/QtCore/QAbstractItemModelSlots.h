%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|columnsAboutToBeInserted( const QModelIndex & parent, int start, int end )
$signal=|columnsAboutToBeMoved( const QModelIndex & sourceParent, int sourceStart, int sourceEnd, const QModelIndex & destinationParent, int destinationColumn )
$signal=|columnsAboutToBeRemoved( const QModelIndex & parent, int start, int end )
$signal=|columnsInserted( const QModelIndex & parent, int start, int end )
$signal=|columnsMoved( const QModelIndex & sourceParent, int sourceStart, int sourceEnd, const QModelIndex & destinationParent, int destinationColumn )
$signal=|columnsRemoved( const QModelIndex & parent, int start, int end )
$signal=|dataChanged( const QModelIndex & topLeft, const QModelIndex & bottomRight )
$signal=|headerDataChanged( Qt::Orientation orientation, int first, int last )
$signal=|layoutAboutToBeChanged()
$signal=|layoutChanged()
$signal=|modelAboutToBeReset()
$signal=|modelReset()
$signal=|rowsAboutToBeInserted( const QModelIndex & parent, int start, int end )
$signal=|rowsAboutToBeMoved( const QModelIndex & sourceParent, int sourceStart, int sourceEnd, const QModelIndex & destinationParent, int destinationRow )
$signal=|rowsAboutToBeRemoved( const QModelIndex & parent, int start, int end )
$signal=|rowsInserted( const QModelIndex & parent, int start, int end )
$signal=|rowsMoved( const QModelIndex & sourceParent, int sourceStart, int sourceEnd, const QModelIndex & destinationParent, int destinationRow )
$signal=|rowsRemoved( const QModelIndex & parent, int start, int end )
$endSlotsClass

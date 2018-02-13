%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void columnsAboutToBeInserted( const QModelIndex & parent, int start, int end )
$signal=|void columnsAboutToBeMoved( const QModelIndex & sourceParent, int sourceStart, int sourceEnd, const QModelIndex & destinationParent, int destinationColumn )
$signal=|void columnsAboutToBeRemoved( const QModelIndex & parent, int start, int end )
$signal=|void columnsInserted( const QModelIndex & parent, int start, int end )
$signal=|void columnsMoved( const QModelIndex & sourceParent, int sourceStart, int sourceEnd, const QModelIndex & destinationParent, int destinationColumn )
$signal=|void columnsRemoved( const QModelIndex & parent, int start, int end )
$signal=|void dataChanged( const QModelIndex & topLeft, const QModelIndex & bottomRight )
$signal=|void headerDataChanged( Qt::Orientation orientation, int first, int last )
$signal=|void layoutAboutToBeChanged()
$signal=|void layoutChanged()
$signal=|void modelAboutToBeReset()
$signal=|void modelReset()
$signal=|void rowsAboutToBeInserted( const QModelIndex & parent, int start, int end )
$signal=|void rowsAboutToBeMoved( const QModelIndex & sourceParent, int sourceStart, int sourceEnd, const QModelIndex & destinationParent, int destinationRow )
$signal=|void rowsAboutToBeRemoved( const QModelIndex & parent, int start, int end )
$signal=|void rowsInserted( const QModelIndex & parent, int start, int end )
$signal=|void rowsMoved( const QModelIndex & sourceParent, int sourceStart, int sourceEnd, const QModelIndex & destinationParent, int destinationRow )
$signal=|void rowsRemoved( const QModelIndex & parent, int start, int end )
$endSlotsClass

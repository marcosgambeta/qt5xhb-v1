%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

$includes

$beginSlotsClass
$signal=|cellActivated( int row, int column )
$signal=|cellChanged( int row, int column )
$signal=|cellClicked( int row, int column )
$signal=|cellDoubleClicked( int row, int column )
$signal=|cellEntered( int row, int column )
$signal=|cellPressed( int row, int column )
$signal=|currentCellChanged( int currentRow, int currentColumn, int previousRow, int previousColumn )
$signal=|currentItemChanged( QTableWidgetItem * current, QTableWidgetItem * previous )
$signal=|itemActivated( QTableWidgetItem * item )
$signal=|itemChanged( QTableWidgetItem * item )
$signal=|itemClicked( QTableWidgetItem * item )
$signal=|itemDoubleClicked( QTableWidgetItem * item )
$signal=|itemEntered( QTableWidgetItem * item )
$signal=|itemPressed( QTableWidgetItem * item )
$signal=|itemSelectionChanged()
$endSlotsClass

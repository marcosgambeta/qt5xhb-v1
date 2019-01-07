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
$slot=|cellActivated( int row, int column )
$slot=|cellChanged( int row, int column )
$slot=|cellClicked( int row, int column )
$slot=|cellDoubleClicked( int row, int column )
$slot=|cellEntered( int row, int column )
$slot=|cellPressed( int row, int column )
$slot=|currentCellChanged( int currentRow, int currentColumn, int previousRow, int previousColumn )
$slot=|currentItemChanged( QTableWidgetItem * current, QTableWidgetItem * previous )
$slot=|itemActivated( QTableWidgetItem * item )
$slot=|itemChanged( QTableWidgetItem * item )
$slot=|itemClicked( QTableWidgetItem * item )
$slot=|itemDoubleClicked( QTableWidgetItem * item )
$slot=|itemEntered( QTableWidgetItem * item )
$slot=|itemPressed( QTableWidgetItem * item )
$slot=|itemSelectionChanged()
$endSlotsClass

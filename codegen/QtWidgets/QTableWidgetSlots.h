%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void cellActivated( int row, int column )
$signal=|void cellChanged( int row, int column )
$signal=|void cellClicked( int row, int column )
$signal=|void cellDoubleClicked( int row, int column )
$signal=|void cellEntered( int row, int column )
$signal=|void cellPressed( int row, int column )
$signal=|void currentCellChanged( int currentRow, int currentColumn, int previousRow, int previousColumn )
$signal=|void currentItemChanged( QTableWidgetItem * current, QTableWidgetItem * previous )
$signal=|void itemActivated( QTableWidgetItem * item )
$signal=|void itemChanged( QTableWidgetItem * item )
$signal=|void itemClicked( QTableWidgetItem * item )
$signal=|void itemDoubleClicked( QTableWidgetItem * item )
$signal=|void itemEntered( QTableWidgetItem * item )
$signal=|void itemPressed( QTableWidgetItem * item )
$signal=|void itemSelectionChanged()
$endSlotsClass

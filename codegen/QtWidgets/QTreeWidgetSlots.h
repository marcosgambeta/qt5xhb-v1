%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void currentItemChanged( QTreeWidgetItem * current, QTreeWidgetItem * previous );
$signal=|void itemActivated( QTreeWidgetItem * item, int column );
$signal=|void itemChanged( QTreeWidgetItem * item, int column );
$signal=|void itemClicked( QTreeWidgetItem * item, int column );
$signal=|void itemCollapsed( QTreeWidgetItem * item );
$signal=|void itemDoubleClicked( QTreeWidgetItem * item, int column );
$signal=|void itemEntered( QTreeWidgetItem * item, int column );
$signal=|void itemExpanded( QTreeWidgetItem * item );
$signal=|void itemPressed( QTreeWidgetItem * item, int column );
$signal=|void itemSelectionChanged();
$endSlotsClass

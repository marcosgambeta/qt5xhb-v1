%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

$includes

$beginSlotsClass
$slot=|currentItemChanged( QTreeWidgetItem * current, QTreeWidgetItem * previous )
$slot=|itemActivated( QTreeWidgetItem * item, int column )
$slot=|itemChanged( QTreeWidgetItem * item, int column )
$slot=|itemClicked( QTreeWidgetItem * item, int column )
$slot=|itemCollapsed( QTreeWidgetItem * item )
$slot=|itemDoubleClicked( QTreeWidgetItem * item, int column )
$slot=|itemEntered( QTreeWidgetItem * item, int column )
$slot=|itemExpanded( QTreeWidgetItem * item )
$slot=|itemPressed( QTreeWidgetItem * item, int column )
$slot=|itemSelectionChanged()
$endSlotsClass

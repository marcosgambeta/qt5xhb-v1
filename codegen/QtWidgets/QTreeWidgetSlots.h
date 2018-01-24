%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
  void currentItemChanged ( QTreeWidgetItem * current, QTreeWidgetItem * previous );
  void itemActivated ( QTreeWidgetItem * item, int column );
  void itemChanged ( QTreeWidgetItem * item, int column );
  void itemClicked ( QTreeWidgetItem * item, int column );
  void itemCollapsed ( QTreeWidgetItem * item );
  void itemDoubleClicked ( QTreeWidgetItem * item, int column );
  void itemEntered ( QTreeWidgetItem * item, int column );
  void itemExpanded ( QTreeWidgetItem * item );
  void itemPressed ( QTreeWidgetItem * item, int column );
  void itemSelectionChanged ();
$endSlotsClass

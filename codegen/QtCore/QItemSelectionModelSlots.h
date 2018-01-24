%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
  void selectionChanged(const QItemSelection &selected, const QItemSelection &deselected);
  void currentChanged(const QModelIndex &current, const QModelIndex &previous);
  void currentRowChanged(const QModelIndex &current, const QModelIndex &previous);
  void currentColumnChanged(const QModelIndex &current, const QModelIndex &previous);
$endSlotsClass

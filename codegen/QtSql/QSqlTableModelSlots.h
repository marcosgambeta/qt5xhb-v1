%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
  void beforeDelete ( int row );
  void beforeInsert ( QSqlRecord & record );
  void beforeUpdate ( int row, QSqlRecord & record );
  void primeInsert ( int row, QSqlRecord & record );
$endSlotsClass

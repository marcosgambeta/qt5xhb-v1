%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSql

$header

$includes

$beginSlotsClass
$slot=|beforeDelete( int row )
$slot=|beforeInsert( QSqlRecord & record )
$slot=|beforeUpdate( int row, QSqlRecord & record )
$slot=|primeInsert( int row, QSqlRecord & record )
$endSlotsClass

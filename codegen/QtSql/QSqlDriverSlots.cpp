%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSql

$header

$includes

$beginSlotsClass
$slot=|notification( const QString & name )
$slot=|notification( const QString & name, QSqlDriver::NotificationSource source, const QVariant & payload )
$endSlotsClass

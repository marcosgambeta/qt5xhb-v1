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
$signal=|notification( const QString & name )
$signal=|notification( const QString & name, QSqlDriver::NotificationSource source, const QVariant & payload )
$endSlotsClass

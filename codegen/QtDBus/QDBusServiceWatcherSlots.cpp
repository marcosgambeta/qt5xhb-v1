%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDBus

$header

$includes

$beginSlotsClass
$slot=|serviceRegistered( const QString & service )
$slot=|serviceUnregistered( const QString & service )
$slot=|serviceOwnerChanged( const QString & service, const QString & oldOwner, const QString & newOwner )
$endSlotsClass

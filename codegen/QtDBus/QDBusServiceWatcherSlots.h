%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDBus

$header

$includes

$beginSlotsClass
$signal=|serviceRegistered( const QString & service )
$signal=|serviceUnregistered( const QString & service )
$signal=|serviceOwnerChanged( const QString & service, const QString & oldOwner, const QString & newOwner )
$endSlotsClass

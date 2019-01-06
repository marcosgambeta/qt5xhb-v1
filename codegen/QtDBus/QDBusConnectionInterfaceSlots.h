%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDBus

$header

$includes

$beginSlotsClass
$signal=|serviceRegistered( const QString & service )
$signal=|serviceUnregistered( const QString & service )
$signal=|serviceOwnerChanged( const QString & name, const QString & oldOwner, const QString & newOwner )
$signal=|callWithCallbackFailed( const QDBusError & error, const QDBusMessage & call )
$endSlotsClass

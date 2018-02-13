%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void serviceRegistered( const QString & service )
$signal=|void serviceUnregistered( const QString & service )
$signal=|void serviceOwnerChanged( const QString & name, const QString & oldOwner, const QString & newOwner )
$signal=|void callWithCallbackFailed( const QDBusError & error, const QDBusMessage & call )
$endSlotsClass

%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

$slot=|serviceRegistered( const QString & service )
$slot=|serviceUnregistered( const QString & service )
$slot=|serviceOwnerChanged( const QString & name, const QString & oldOwner, const QString & newOwner )
$slot=|callWithCallbackFailed( const QDBusError & error, const QDBusMessage & call )

$signalMethod=|serviceRegistered(QString)
$signalMethod=|serviceUnregistered(QString)
$signalMethod=|serviceOwnerChanged(QString,QString,QString)
$signalMethod=|callWithCallbackFailed(QDBusError,QDBusMessage)

$endSlotsClass

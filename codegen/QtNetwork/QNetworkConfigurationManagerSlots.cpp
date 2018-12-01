%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetwork

$header

$includes

$beginSlotsClass
$slot=|configurationAdded( const QNetworkConfiguration & config )
$slot=|configurationChanged( const QNetworkConfiguration & config )
$slot=|configurationRemoved( const QNetworkConfiguration & config )
$slot=|onlineStateChanged( bool isOnline )
$slot=|updateCompleted()
$endSlotsClass

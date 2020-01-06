%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetwork

$header

$includes

$beginSlotsClass
$signal=|configurationAdded( const QNetworkConfiguration & config )
$signal=|configurationChanged( const QNetworkConfiguration & config )
$signal=|configurationRemoved( const QNetworkConfiguration & config )
$signal=|onlineStateChanged( bool isOnline )
$signal=|updateCompleted()
$endSlotsClass

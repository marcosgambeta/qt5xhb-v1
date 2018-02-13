%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void configurationAdded( const QNetworkConfiguration & config )
$signal=|void configurationChanged( const QNetworkConfiguration & config )
$signal=|void configurationRemoved( const QNetworkConfiguration & config )
$signal=|void onlineStateChanged( bool isOnline )
$signal=|void updateCompleted()
$endSlotsClass

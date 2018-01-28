%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void closed();
$signal=|void error( QNetworkSession::SessionError error );
$signal=|void newConfigurationActivated();
$signal=|void opened();
$signal=|void preferredConfigurationChanged( const QNetworkConfiguration & config, bool isSeamless );
$signal=|void stateChanged( QNetworkSession::State state );
$endSlotsClass

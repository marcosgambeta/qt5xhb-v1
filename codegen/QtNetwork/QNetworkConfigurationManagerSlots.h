%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
  void configurationAdded(const QNetworkConfiguration &config);
  void configurationChanged(const QNetworkConfiguration &config);
  void configurationRemoved(const QNetworkConfiguration &config);
  void onlineStateChanged(bool isOnline);
  void updateCompleted();
$endSlotsClass

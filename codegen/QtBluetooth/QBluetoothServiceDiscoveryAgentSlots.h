%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes=5,2,0

$beginSlotsClass
  void serviceDiscovered(const QBluetoothServiceInfo &info);
  void finished();
  void canceled();
  void error(QBluetoothServiceDiscoveryAgent::Error error);
$endSlotsClass

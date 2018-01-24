%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes=5,2,0

$beginSlotsClass
  void connected();
  void disconnected();
  void error(QBluetoothSocket::SocketError error);
  void stateChanged(QBluetoothSocket::SocketState state);
$endSlotsClass

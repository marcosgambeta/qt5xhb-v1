%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes=5,2,0

class SlotsQBluetoothServer: public QObject
{
  Q_OBJECT
  public:
  SlotsQBluetoothServer(QObject *parent = 0);
  ~SlotsQBluetoothServer();
  public slots:
  void newConnection();
  void error(QBluetoothServer::Error error);
};

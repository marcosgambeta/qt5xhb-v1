%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes=5,2,0

class SlotsQBluetoothDeviceDiscoveryAgent: public QObject
{
  Q_OBJECT
  public:
  SlotsQBluetoothDeviceDiscoveryAgent(QObject *parent = 0);
  ~SlotsQBluetoothDeviceDiscoveryAgent();
  public slots:
  void deviceDiscovered(const QBluetoothDeviceInfo &info);
  void finished();
  void error(QBluetoothDeviceDiscoveryAgent::Error error);
  void canceled();
};

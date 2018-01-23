%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes=5,2,0

class SlotsQBluetoothLocalDevice: public QObject
{
  Q_OBJECT
  public:
  SlotsQBluetoothLocalDevice(QObject *parent = 0);
  ~SlotsQBluetoothLocalDevice();
  public slots:
  void hostModeStateChanged(QBluetoothLocalDevice::HostMode state);
  void pairingFinished(const QBluetoothAddress &address, QBluetoothLocalDevice::Pairing pairing);
  void pairingDisplayPinCode(const QBluetoothAddress &address, QString pin);
  void pairingDisplayConfirmation(const QBluetoothAddress &address, QString pin);
  void error(QBluetoothLocalDevice::Error error);
};

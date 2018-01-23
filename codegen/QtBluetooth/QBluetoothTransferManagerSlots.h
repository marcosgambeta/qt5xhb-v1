%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes=5,2,0

class SlotsQBluetoothTransferManager: public QObject
{
  Q_OBJECT
  public:
  SlotsQBluetoothTransferManager(QObject *parent = 0);
  ~SlotsQBluetoothTransferManager();
  public slots:
  void finished(QBluetoothTransferReply *reply);
};

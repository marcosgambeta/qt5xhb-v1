%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes=5,2,0

class SlotsQBluetoothTransferReply: public QObject
{
  Q_OBJECT
  public:
  SlotsQBluetoothTransferReply(QObject *parent = 0);
  ~SlotsQBluetoothTransferReply();
  public slots:
  void finished(QBluetoothTransferReply * r);
  void transferProgress(qint64 bytesTransferred, qint64 bytesTotal);
};

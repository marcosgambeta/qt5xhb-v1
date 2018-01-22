%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQIODevice: public QObject
{
  Q_OBJECT
  public:
  SlotsQIODevice(QObject *parent = 0);
  ~SlotsQIODevice();
  public slots:
  void aboutToClose ();
  void bytesWritten ( qint64 bytes );
  void readChannelFinished ();
  void readyRead ();
};

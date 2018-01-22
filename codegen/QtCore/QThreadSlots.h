%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQThread: public QObject
{
  Q_OBJECT
  public:
  SlotsQThread(QObject *parent = 0);
  ~SlotsQThread();
  public slots:
  void finished();
  void started();
};

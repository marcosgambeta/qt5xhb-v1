%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQLocalServer: public QObject
{
  Q_OBJECT
  public:
  SlotsQLocalServer(QObject *parent = 0);
  ~SlotsQLocalServer();
  public slots:
  void newConnection ();
};

%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQState: public QObject
{
  Q_OBJECT
  public:
  SlotsQState(QObject *parent = 0);
  ~SlotsQState();
  public slots:
  void finished ();
  void propertiesAssigned ();
};

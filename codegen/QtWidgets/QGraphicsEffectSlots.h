%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQGraphicsEffect: public QObject
{
  Q_OBJECT
  public:
  SlotsQGraphicsEffect(QObject *parent = 0);
  ~SlotsQGraphicsEffect();
  public slots:
  void enabledChanged ( bool enabled );
};

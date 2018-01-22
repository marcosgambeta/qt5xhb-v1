%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQScroller: public QObject
{
  Q_OBJECT
  public:
  SlotsQScroller(QObject *parent = 0);
  ~SlotsQScroller();
  public slots:
  void scrollerPropertiesChanged(const QScrollerProperties & newProperties);
  void stateChanged(QScroller::State newState);
};

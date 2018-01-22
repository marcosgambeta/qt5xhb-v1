%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQOffscreenSurface: public QObject
{
  Q_OBJECT
  public:
  SlotsQOffscreenSurface(QObject *parent = 0);
  ~SlotsQOffscreenSurface();
  public slots:
  void screenChanged(QScreen *screen);
};

%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQGraphicsWidget: public QObject
{
  Q_OBJECT
  public:
  SlotsQGraphicsWidget(QObject *parent = 0);
  ~SlotsQGraphicsWidget();
  public slots:
  void geometryChanged ();
};

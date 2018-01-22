%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQStackedWidget: public QObject
{
  Q_OBJECT
  public:
  SlotsQStackedWidget(QObject *parent = 0);
  ~SlotsQStackedWidget();
  public slots:
  void currentChanged ( int index );
  void widgetRemoved ( int index );
};

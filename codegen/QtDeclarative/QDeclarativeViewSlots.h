%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQDeclarativeView: public QObject
{
  Q_OBJECT
  public:
  SlotsQDeclarativeView(QObject *parent = 0);
  ~SlotsQDeclarativeView();
  public slots:
  void sceneResized ( QSize size );
  void statusChanged ( QDeclarativeView::Status status );
};

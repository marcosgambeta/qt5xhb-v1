%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQDeclarativeComponent: public QObject
{
  Q_OBJECT
  public:
  SlotsQDeclarativeComponent(QObject *parent = 0);
  ~SlotsQDeclarativeComponent();
  public slots:
  void progressChanged ( qreal progress );
  void statusChanged ( QDeclarativeComponent::Status status );
};

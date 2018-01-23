%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes=5,4,0

class SlotsQGeoRoutingManager: public QObject
{
  Q_OBJECT
  public:
  SlotsQGeoRoutingManager(QObject *parent = 0);
  ~SlotsQGeoRoutingManager();
  public slots:
  void finished(QGeoRouteReply *reply);
  void error(QGeoRouteReply *reply, QGeoRouteReply::Error error, QString errorString = QString());
};

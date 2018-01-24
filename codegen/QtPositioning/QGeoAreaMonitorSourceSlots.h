%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes=5,2,0

class SlotsQGeoAreaMonitorSource: public QObject
{
  Q_OBJECT
  public:
  SlotsQGeoAreaMonitorSource(QObject *parent = 0);
  ~SlotsQGeoAreaMonitorSource();
  public slots:
  void areaEntered(const QGeoAreaMonitorInfo &monitor, const QGeoPositionInfo &update);
  void areaExited(const QGeoAreaMonitorInfo &monitor, const QGeoPositionInfo &update);
  void monitorExpired(const QGeoAreaMonitorInfo &monitor);
  void error(QGeoAreaMonitorSource::Error error);
};

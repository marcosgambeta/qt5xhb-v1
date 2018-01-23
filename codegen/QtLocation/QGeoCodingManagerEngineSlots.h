%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes=5,4,0

class SlotsQGeoCodingManagerEngine: public QObject
{
  Q_OBJECT
  public:
  SlotsQGeoCodingManagerEngine(QObject *parent = 0);
  ~SlotsQGeoCodingManagerEngine();
  public slots:
  void finished(QGeoCodeReply *reply);
  void error(QGeoCodeReply *reply, QGeoCodeReply::Error error, QString errorString = QString());
};

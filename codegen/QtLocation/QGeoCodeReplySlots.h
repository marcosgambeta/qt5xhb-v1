%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes=5,4,0

class SlotsQGeoCodeReply: public QObject
{
  Q_OBJECT
  public:
  SlotsQGeoCodeReply(QObject *parent = 0);
  ~SlotsQGeoCodeReply();
  public slots:
  void finished();
  void error(QGeoCodeReply::Error error, const QString &errorString = QString());
};

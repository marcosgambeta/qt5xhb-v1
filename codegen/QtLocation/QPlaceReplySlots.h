%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes=5,4,0

class SlotsQPlaceReply: public QObject
{
  Q_OBJECT
  public:
  SlotsQPlaceReply(QObject *parent = 0);
  ~SlotsQPlaceReply();
  public slots:
  void finished();
  void error(QPlaceReply::Error error, const QString &errorString = QString());
};

%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQMediaRecorderControl: public QObject
{
  Q_OBJECT
  public:
  SlotsQMediaRecorderControl(QObject *parent = 0);
  ~SlotsQMediaRecorderControl();
  public slots:
  void actualLocationChanged(const QUrl & location);
  void durationChanged(qint64 duration);
  void error(int error, const QString & errorString);
  void mutedChanged(bool muted);
  void stateChanged(QMediaRecorder::State state);
  void statusChanged(QMediaRecorder::Status status);
  void volumeChanged(qreal gain);
};

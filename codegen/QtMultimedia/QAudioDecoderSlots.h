%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQAudioDecoder: public QObject
{
  Q_OBJECT
  public:
  SlotsQAudioDecoder(QObject *parent = 0);
  ~SlotsQAudioDecoder();
  public slots:
  void bufferAvailableChanged(bool available);
  void bufferReady();
  void durationChanged(qint64 duration);
  void error(QAudioDecoder::Error error);
  void finished();
  void formatChanged(const QAudioFormat & format);
  void positionChanged(qint64 position);
  void sourceChanged();
  void stateChanged(QAudioDecoder::State state);
};

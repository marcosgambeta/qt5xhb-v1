%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQAudioOutput: public QObject
{
  Q_OBJECT
  public:
  SlotsQAudioOutput(QObject *parent = 0);
  ~SlotsQAudioOutput();
  public slots:
  void notify();
  void stateChanged(QAudio::State state);
};

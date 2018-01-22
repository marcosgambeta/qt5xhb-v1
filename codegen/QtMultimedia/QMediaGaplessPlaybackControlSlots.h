%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQMediaGaplessPlaybackControl: public QObject
{
  Q_OBJECT
  public:
  SlotsQMediaGaplessPlaybackControl(QObject *parent = 0);
  ~SlotsQMediaGaplessPlaybackControl();
  public slots:
  void advancedToNextMedia();
  void crossfadeTimeChanged(qreal crossfadeTime);
  void nextMediaChanged(const QMediaContent & media);
};

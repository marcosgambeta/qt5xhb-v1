%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
  void audioAvailableChanged(bool available);
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  void audioRoleChanged(QAudio::Role role);
#endif
  void bufferStatusChanged(int percentFilled);
  void currentMediaChanged(const QMediaContent & media);
  void durationChanged(qint64 duration);
  void error(QMediaPlayer::Error error);
  void mediaChanged(const QMediaContent & media);
  void mediaStatusChanged(QMediaPlayer::MediaStatus status);
  void mutedChanged(bool muted);
  void networkConfigurationChanged(const QNetworkConfiguration & configuration);
  void playbackRateChanged(qreal rate);
  void positionChanged(qint64 position);
  void seekableChanged(bool seekable);
  void stateChanged(QMediaPlayer::State state);
  void videoAvailableChanged(bool videoAvailable);
  void volumeChanged(int volume);
$endSlotsClass

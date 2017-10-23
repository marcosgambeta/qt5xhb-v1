/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQMEDIAPLAYER_H
#define SLOTSQMEDIAPLAYER_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QMediaPlayer>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQMediaPlayer: public QObject
{
  Q_OBJECT
  public:
  SlotsQMediaPlayer(QObject *parent = 0);
  ~SlotsQMediaPlayer();
  public slots:
  void audioAvailableChanged(bool available);
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
};

#endif // SLOTSQMEDIAPLAYER_H

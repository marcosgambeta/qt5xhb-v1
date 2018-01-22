/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQMEDIAPLAYERCONTROL_H
#define SLOTSQMEDIAPLAYERCONTROL_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QMediaPlayerControl>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQMediaPlayerControl: public QObject
{
  Q_OBJECT
  public:
  SlotsQMediaPlayerControl(QObject *parent = 0);
  ~SlotsQMediaPlayerControl();
  public slots:
  void audioAvailableChanged(bool audio);
  void availablePlaybackRangesChanged(const QMediaTimeRange & ranges);
  void bufferStatusChanged(int progress);
  void durationChanged(qint64 duration);
  void error(int error, const QString & errorString);
  void mediaChanged(const QMediaContent & content);
  void mediaStatusChanged(QMediaPlayer::MediaStatus status);
  void mutedChanged(bool mute);
  void playbackRateChanged(qreal rate);
  void positionChanged(qint64 position);
  void seekableChanged(bool seekable);
  void stateChanged(QMediaPlayer::State state);
  void videoAvailableChanged(bool video);
  void volumeChanged(int volume);
};

#endif // SLOTSQMEDIAPLAYERCONTROL_H

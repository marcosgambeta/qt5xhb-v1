/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQMEDIAPLAYERCONTROL_H
#define SLOTSQMEDIAPLAYERCONTROL_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QMediaPlayerControl>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

bool Signals_connect_signal ( QObject * object, QString signal, PHB_ITEM codeblock );
bool Signals_disconnect_signal ( QObject * object, QString signal );
bool Signals_is_signal_connected( QObject * object, QString signal );
PHB_ITEM Signals_return_codeblock ( QObject * object, QString signal );
void Signals_release_codeblocks ();
void Signals_disconnect_all_signals (QObject * obj);

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

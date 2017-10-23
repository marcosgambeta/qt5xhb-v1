/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQMEDIAPLAYLIST_H
#define SLOTSQMEDIAPLAYLIST_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QMediaPlaylist>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQMediaPlaylist: public QObject
{
  Q_OBJECT
  public:
  SlotsQMediaPlaylist(QObject *parent = 0);
  ~SlotsQMediaPlaylist();
  public slots:
  void currentIndexChanged(int position);
  void currentMediaChanged(const QMediaContent & content);
  void loadFailed();
  void loaded();
  void mediaAboutToBeInserted(int start, int end);
  void mediaAboutToBeRemoved(int start, int end);
  void mediaChanged(int start, int end);
  void mediaInserted(int start, int end);
  void mediaRemoved(int start, int end);
  void playbackModeChanged(QMediaPlaylist::PlaybackMode mode);
};

#endif // SLOTSQMEDIAPLAYLIST_H

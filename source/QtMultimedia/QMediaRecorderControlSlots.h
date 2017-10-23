/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQMEDIARECORDERCONTROL_H
#define SLOTSQMEDIARECORDERCONTROL_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QMediaRecorderControl>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

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

#endif // SLOTSQMEDIARECORDERCONTROL_H

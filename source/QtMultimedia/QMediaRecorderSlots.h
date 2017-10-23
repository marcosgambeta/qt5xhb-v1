/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQMEDIARECORDER_H
#define SLOTSQMEDIARECORDER_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QMediaRecorder>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQMediaRecorder: public QObject
{
  Q_OBJECT
  public:
  SlotsQMediaRecorder(QObject *parent = 0);
  ~SlotsQMediaRecorder();
  public slots:
  void actualLocationChanged(const QUrl & location);
  void availabilityChanged(bool available);
  void availabilityChanged(QMultimedia::AvailabilityStatus availability);
  void durationChanged(qint64 duration);
  void error(QMediaRecorder::Error error);
  void metaDataAvailableChanged(bool available);
  void metaDataChanged();
  void metaDataChanged(const QString & key, const QVariant & value);
  void metaDataWritableChanged(bool writable);
  void mutedChanged(bool muted);
  void stateChanged(QMediaRecorder::State state);
  void statusChanged(QMediaRecorder::Status status);
  void volumeChanged(qreal volume);
};

#endif // SLOTSQMEDIARECORDER_H

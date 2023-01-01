/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QMEDIARECORDERCONTROLSLOTS_H
#define QMEDIARECORDERCONTROLSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtMultimedia/QMediaRecorderControl>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

class QMediaRecorderControlSlots: public QObject
{
  Q_OBJECT
  public:
  QMediaRecorderControlSlots( QObject *parent = 0 );
  ~QMediaRecorderControlSlots();
  public slots:
  void actualLocationChanged( const QUrl & location );
  void durationChanged( qint64 duration );
  void error( int error, const QString & errorString );
  void mutedChanged( bool muted );
  void stateChanged( QMediaRecorder::State state );
  void statusChanged( QMediaRecorder::Status status );
  void volumeChanged( qreal gain );
};

#endif /* QMEDIARECORDERCONTROLSLOTS_H */

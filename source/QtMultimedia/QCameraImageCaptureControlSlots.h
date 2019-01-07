/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QCAMERAIMAGECAPTURECONTROLSLOTS_H
#define QCAMERAIMAGECAPTURECONTROLSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QCameraImageCaptureControl>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QCameraImageCaptureControlSlots: public QObject
{
  Q_OBJECT
  public:
  QCameraImageCaptureControlSlots(QObject *parent = 0);
  ~QCameraImageCaptureControlSlots();
  public slots:
  void error( int id, int error, const QString & errorString );
  void imageAvailable( int requestId, const QVideoFrame & buffer );
  void imageCaptured( int requestId, const QImage & preview );
  void imageExposed( int requestId );
  void imageMetadataAvailable( int id, const QString & key, const QVariant & value );
  void imageSaved( int requestId, const QString & fileName );
  void readyForCaptureChanged( bool ready );
};

#endif /* QCAMERAIMAGECAPTURECONTROLSLOTS_H */

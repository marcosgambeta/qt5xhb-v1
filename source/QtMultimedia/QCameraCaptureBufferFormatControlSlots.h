/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQCAMERACAPTUREBUFFERFORMATCONTROL_H
#define SLOTSQCAMERACAPTUREBUFFERFORMATCONTROL_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QCameraCaptureBufferFormatControl>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQCameraCaptureBufferFormatControl: public QObject
{
  Q_OBJECT
  public:
  SlotsQCameraCaptureBufferFormatControl(QObject *parent = 0);
  ~SlotsQCameraCaptureBufferFormatControl();
  public slots:
  void bufferFormatChanged(QVideoFrame::PixelFormat format);
};

#endif // SLOTSQCAMERACAPTUREBUFFERFORMATCONTROL_H

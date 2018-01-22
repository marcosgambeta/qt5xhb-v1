/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

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

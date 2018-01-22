/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQCAMERACONTROL_H
#define SLOTSQCAMERACONTROL_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QCameraControl>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQCameraControl: public QObject
{
  Q_OBJECT
  public:
  SlotsQCameraControl(QObject *parent = 0);
  ~SlotsQCameraControl();
  public slots:
  void captureModeChanged(QCamera::CaptureModes mode);
  void error(int error, const QString & errorString);
  void stateChanged(QCamera::State state);
  void statusChanged(QCamera::Status status);
};

#endif // SLOTSQCAMERACONTROL_H

/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQCAMERAFLASHCONTROL_H
#define SLOTSQCAMERAFLASHCONTROL_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QCameraFlashControl>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQCameraFlashControl: public QObject
{
  Q_OBJECT
  public:
  SlotsQCameraFlashControl(QObject *parent = 0);
  ~SlotsQCameraFlashControl();
  public slots:
  void flashReady(bool ready);
};

#endif // SLOTSQCAMERAFLASHCONTROL_H

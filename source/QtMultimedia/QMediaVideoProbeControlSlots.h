/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQMEDIAVIDEOPROBECONTROL_H
#define SLOTSQMEDIAVIDEOPROBECONTROL_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QMediaVideoProbeControl>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQMediaVideoProbeControl: public QObject
{
  Q_OBJECT
  public:
  SlotsQMediaVideoProbeControl(QObject *parent = 0);
  ~SlotsQMediaVideoProbeControl();
  public slots:
  void flush();
  void videoFrameProbed(const QVideoFrame & frame);
};

#endif // SLOTSQMEDIAVIDEOPROBECONTROL_H

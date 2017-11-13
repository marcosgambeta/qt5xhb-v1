/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQVIDEODEVICESELECTORCONTROL_H
#define SLOTSQVIDEODEVICESELECTORCONTROL_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QVideoDeviceSelectorControl>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQVideoDeviceSelectorControl: public QObject
{
  Q_OBJECT
  public:
  SlotsQVideoDeviceSelectorControl(QObject *parent = 0);
  ~SlotsQVideoDeviceSelectorControl();
  public slots:
  void devicesChanged();
  void selectedDeviceChanged(int index);
  void selectedDeviceChanged(const QString & name);
};

#endif // SLOTSQVIDEODEVICESELECTORCONTROL_H

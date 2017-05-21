/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

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

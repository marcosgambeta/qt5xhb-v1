/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQVIDEOWINDOWCONTROL_H
#define SLOTSQVIDEOWINDOWCONTROL_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QVideoWindowControl>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQVideoWindowControl: public QObject
{
  Q_OBJECT
  public:
  SlotsQVideoWindowControl(QObject *parent = 0);
  ~SlotsQVideoWindowControl();
  public slots:
  void fullScreenChanged(bool fullScreen);
  void brightnessChanged(int brightness);
  void contrastChanged(int contrast);
  void hueChanged(int hue);
  void saturationChanged(int saturation);
  void nativeSizeChanged();
};

#endif // SLOTSQVIDEOWINDOWCONTROL_H

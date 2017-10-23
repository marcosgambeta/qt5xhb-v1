/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQVIDEOWIDGET_H
#define SLOTSQVIDEOWIDGET_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QVideoWidget>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQVideoWidget: public QObject
{
  Q_OBJECT
  public:
  SlotsQVideoWidget(QObject *parent = 0);
  ~SlotsQVideoWidget();
  public slots:
  void fullScreenChanged(bool fullScreen);
  void brightnessChanged(int brightness);
  void contrastChanged(int contrast);
  void hueChanged(int hue);
  void saturationChanged(int saturation);
};

#endif // SLOTSQVIDEOWIDGET_H

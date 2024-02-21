/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QVIDEOWINDOWCONTROLSLOTS_H
#define QVIDEOWINDOWCONTROLSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtMultimedia/QVideoWindowControl>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QVideoWindowControlSlots : public QObject
{
  Q_OBJECT
public:
  QVideoWindowControlSlots(QObject *parent = 0);
  ~QVideoWindowControlSlots();
public slots:
  void fullScreenChanged(bool fullScreen);
  void brightnessChanged(int brightness);
  void contrastChanged(int contrast);
  void hueChanged(int hue);
  void saturationChanged(int saturation);
  void nativeSizeChanged();
};

#endif /* QVIDEOWINDOWCONTROLSLOTS_H */

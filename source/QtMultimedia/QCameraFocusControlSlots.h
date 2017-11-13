/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQCAMERAFOCUSCONTROL_H
#define SLOTSQCAMERAFOCUSCONTROL_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QCameraFocusControl>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQCameraFocusControl: public QObject
{
  Q_OBJECT
  public:
  SlotsQCameraFocusControl(QObject *parent = 0);
  ~SlotsQCameraFocusControl();
  public slots:
  void customFocusPointChanged(const QPointF & point);
  void focusModeChanged(QCameraFocus::FocusModes mode);
  void focusPointModeChanged(QCameraFocus::FocusPointMode mode);
  void focusZonesChanged();
};

#endif // SLOTSQCAMERAFOCUSCONTROL_H

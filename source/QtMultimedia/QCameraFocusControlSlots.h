/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

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

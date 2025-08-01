//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QCAMERAFOCUSCONTROLSLOTS_H
#define QCAMERAFOCUSCONTROLSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtMultimedia/QCameraFocusControl>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QCameraFocusControlSlots : public QObject
{
  Q_OBJECT
public:
  QCameraFocusControlSlots(QObject *parent = 0);
  ~QCameraFocusControlSlots();
public slots:
  void customFocusPointChanged(const QPointF &point);
  void focusModeChanged(QCameraFocus::FocusModes mode);
  void focusPointModeChanged(QCameraFocus::FocusPointMode mode);
  void focusZonesChanged();
};

#endif // QCAMERAFOCUSCONTROLSLOTS_H

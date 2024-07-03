//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QQUICKVIEWSLOTS_H
#define QQUICKVIEWSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtQuick/QQuickView>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QQuickViewSlots : public QObject
{
  Q_OBJECT
public:
  QQuickViewSlots(QObject *parent = 0);
  ~QQuickViewSlots();
public slots:
  void statusChanged(QQuickView::Status status);
};

#endif // QQUICKVIEWSLOTS_H

//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QABSTRACTSPINBOXSLOTS_H
#define QABSTRACTSPINBOXSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtWidgets/QAbstractSpinBox>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QAbstractSpinBoxSlots : public QObject
{
  Q_OBJECT
public:
  QAbstractSpinBoxSlots(QObject *parent = 0);
  ~QAbstractSpinBoxSlots();
public slots:
  void editingFinished();
};

#endif // QABSTRACTSPINBOXSLOTS_H

//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QABSTRACTBUTTONSLOTS_H
#define QABSTRACTBUTTONSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtWidgets/QAbstractButton>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QAbstractButtonSlots : public QObject
{
  Q_OBJECT
public:
  QAbstractButtonSlots(QObject *parent = 0);
  ~QAbstractButtonSlots();
public slots:
  void clicked(bool checked = false);
  void pressed();
  void released();
  void toggled(bool checked);
};

#endif // QABSTRACTBUTTONSLOTS_H

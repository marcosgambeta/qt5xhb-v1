//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QABSTRACTITEMVIEWSLOTS_H
#define QABSTRACTITEMVIEWSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtWidgets/QAbstractItemView>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QAbstractItemViewSlots : public QObject
{
  Q_OBJECT
public:
  QAbstractItemViewSlots(QObject *parent = 0);
  ~QAbstractItemViewSlots();
public slots:
  void activated(const QModelIndex &index);
  void clicked(const QModelIndex &index);
  void doubleClicked(const QModelIndex &index);
  void entered(const QModelIndex &index);
  void pressed(const QModelIndex &index);
  void viewportEntered();
};

#endif // QABSTRACTITEMVIEWSLOTS_H

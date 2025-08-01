//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QLISTVIEWSLOTS_H
#define QLISTVIEWSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtWidgets/QListView>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QListViewSlots : public QObject
{
  Q_OBJECT
public:
  QListViewSlots(QObject *parent = 0);
  ~QListViewSlots();
public slots:
  void indexesMoved(const QModelIndexList &indexes);
};

#endif // QLISTVIEWSLOTS_H

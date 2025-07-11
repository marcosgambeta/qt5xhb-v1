//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QLISTWIDGETSLOTS_H
#define QLISTWIDGETSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtWidgets/QListWidget>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QListWidgetSlots : public QObject
{
  Q_OBJECT
public:
  QListWidgetSlots(QObject *parent = 0);
  ~QListWidgetSlots();
public slots:
  void currentItemChanged(QListWidgetItem *current, QListWidgetItem *previous);
  void currentRowChanged(int currentRow);
  void currentTextChanged(const QString &currentText);
  void itemActivated(QListWidgetItem *item);
  void itemChanged(QListWidgetItem *item);
  void itemClicked(QListWidgetItem *item);
  void itemDoubleClicked(QListWidgetItem *item);
  void itemEntered(QListWidgetItem *item);
  void itemPressed(QListWidgetItem *item);
  void itemSelectionChanged();
};

#endif // QLISTWIDGETSLOTS_H

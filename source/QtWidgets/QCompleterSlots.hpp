//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QCOMPLETERSLOTS_H
#define QCOMPLETERSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtWidgets/QCompleter>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QCompleterSlots : public QObject
{
  Q_OBJECT
public:
  QCompleterSlots(QObject *parent = 0);
  ~QCompleterSlots();
public slots:
  void activated(const QString &text);
  void activated(const QModelIndex &index);
  void highlighted(const QString &text);
  void highlighted(const QModelIndex &index);
};

#endif // QCOMPLETERSLOTS_H

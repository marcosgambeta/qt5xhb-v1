//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QQMLPROPERTYMAPSLOTS_H
#define QQMLPROPERTYMAPSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtQml/QQmlPropertyMap>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QQmlPropertyMapSlots : public QObject
{
  Q_OBJECT
public:
  QQmlPropertyMapSlots(QObject *parent = 0);
  ~QQmlPropertyMapSlots();
public slots:
  void valueChanged(const QString &key, const QVariant &value);
};

#endif // QQMLPROPERTYMAPSLOTS_H

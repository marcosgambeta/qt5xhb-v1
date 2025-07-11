//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QAXOBJECTSLOTS_H
#define QAXOBJECTSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <ActiveQt/QAxObject>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QAxObjectSlots : public QObject
{
  Q_OBJECT
public:
  QAxObjectSlots(QObject *parent = 0);
  ~QAxObjectSlots();
public slots:
  void exception(int code, const QString &source, const QString &desc, const QString &help);
  void propertyChanged(const QString &name);
  void signal(const QString &name, int argc, void *argv);
};

#endif // QAXOBJECTSLOTS_H

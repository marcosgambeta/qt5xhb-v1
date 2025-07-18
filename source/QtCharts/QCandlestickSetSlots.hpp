//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QCANDLESTICKSETSLOTS_H
#define QCANDLESTICKSETSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
#include <QtCharts/QCandlestickSet>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
using namespace QtCharts;
#endif

class QCandlestickSetSlots : public QObject
{
  Q_OBJECT
public:
  QCandlestickSetSlots(QObject *parent = 0);
  ~QCandlestickSetSlots();
public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
  void brushChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
  void clicked();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
  void closeChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
  void doubleClicked();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
  void highChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
  void hovered(bool status);
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
  void lowChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
  void openChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
  void penChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
  void pressed();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
  void released();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
  void timestampChanged();
#endif
};

#endif // QCANDLESTICKSETSLOTS_H

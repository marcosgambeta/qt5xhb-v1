//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QPIESERIESSLOTS_H
#define QPIESERIESSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
#include <QtCharts/QPieSeries>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

using namespace QtCharts;

class QPieSeriesSlots : public QObject
{
  Q_OBJECT
public:
  QPieSeriesSlots(QObject *parent = 0);
  ~QPieSeriesSlots();
public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  void added(QList<QPieSlice *> slices);
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  void clicked(QPieSlice *slice);
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  void countChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  void doubleClicked(QPieSlice *slice);
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  void hovered(QPieSlice *slice, bool state);
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  void pressed(QPieSlice *slice);
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  void released(QPieSlice *slice);
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  void removed(QList<QPieSlice *> slices);
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  void sumChanged();
#endif
};

#endif // QPIESERIESSLOTS_H

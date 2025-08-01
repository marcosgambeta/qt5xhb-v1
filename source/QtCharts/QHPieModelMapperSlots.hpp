//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QHPIEMODELMAPPERSLOTS_H
#define QHPIEMODELMAPPERSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
#include <QtCharts/QHPieModelMapper>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

using namespace QtCharts;

class QHPieModelMapperSlots : public QObject
{
  Q_OBJECT
public:
  QHPieModelMapperSlots(QObject *parent = 0);
  ~QHPieModelMapperSlots();
public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  void columnCountChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  void firstColumnChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  void labelsRowChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  void modelReplaced();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  void seriesReplaced();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  void valuesRowChanged();
#endif
};

#endif // QHPIEMODELMAPPERSLOTS_H

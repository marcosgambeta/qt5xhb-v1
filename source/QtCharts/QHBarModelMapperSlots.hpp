//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QHBARMODELMAPPERSLOTS_H
#define QHBARMODELMAPPERSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
#include <QtCharts/QHBarModelMapper>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

using namespace QtCharts;

class QHBarModelMapperSlots : public QObject
{
  Q_OBJECT
public:
  QHBarModelMapperSlots(QObject *parent = 0);
  ~QHBarModelMapperSlots();
public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  void columnCountChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  void firstBarSetRowChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  void firstColumnChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  void lastBarSetRowChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  void modelReplaced();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  void seriesReplaced();
#endif
};

#endif // QHBARMODELMAPPERSLOTS_H

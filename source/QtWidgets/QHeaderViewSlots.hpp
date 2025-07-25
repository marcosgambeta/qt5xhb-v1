//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QHEADERVIEWSLOTS_H
#define QHEADERVIEWSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtWidgets/QHeaderView>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QHeaderViewSlots : public QObject
{
  Q_OBJECT
public:
  QHeaderViewSlots(QObject *parent = 0);
  ~QHeaderViewSlots();
public slots:
  void geometriesChanged();
  void sectionAutoResize(int logicalIndex, QHeaderView::ResizeMode mode);
  void sectionClicked(int logicalIndex);
  void sectionCountChanged(int oldCount, int newCount);
  void sectionDoubleClicked(int logicalIndex);
  void sectionEntered(int logicalIndex);
  void sectionHandleDoubleClicked(int logicalIndex);
  void sectionMoved(int logicalIndex, int oldVisualIndex, int newVisualIndex);
  void sectionPressed(int logicalIndex);
  void sectionResized(int logicalIndex, int oldSize, int newSize);
  void sortIndicatorChanged(int logicalIndex, Qt::SortOrder order);
};

#endif // QHEADERVIEWSLOTS_H

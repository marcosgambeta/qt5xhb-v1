/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQHEADERVIEW_H
#define SLOTSQHEADERVIEW_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QHeaderView>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQHeaderView: public QObject
{
  Q_OBJECT
  public:
  SlotsQHeaderView(QObject *parent = 0);
  ~SlotsQHeaderView();
  public slots:
  void geometriesChanged ();
  void sectionAutoResize ( int logicalIndex, QHeaderView::ResizeMode mode );
  void sectionClicked ( int logicalIndex );
  void sectionCountChanged ( int oldCount, int newCount );
  void sectionDoubleClicked ( int logicalIndex );
  void sectionEntered ( int logicalIndex );
  void sectionHandleDoubleClicked ( int logicalIndex );
  void sectionMoved ( int logicalIndex, int oldVisualIndex, int newVisualIndex );
  void sectionPressed ( int logicalIndex );
  void sectionResized ( int logicalIndex, int oldSize, int newSize );
  void sortIndicatorChanged ( int logicalIndex, Qt::SortOrder order );
};

#endif // SLOTSQHEADERVIEW_H

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQLISTVIEW_H
#define SLOTSQLISTVIEW_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QListView>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQListView: public QObject
{
  Q_OBJECT
  public:
  SlotsQListView(QObject *parent = 0);
  ~SlotsQListView();
  public slots:
  void indexesMoved ( const QModelIndexList & indexes );
};

#endif // SLOTSQLISTVIEW_H

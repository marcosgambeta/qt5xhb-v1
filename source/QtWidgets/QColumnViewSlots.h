/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQCOLUMNVIEW_H
#define SLOTSQCOLUMNVIEW_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QColumnView>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQColumnView: public QObject
{
  Q_OBJECT
  public:
  SlotsQColumnView(QObject *parent = 0);
  ~SlotsQColumnView();
  public slots:
  void updatePreviewWidget ( const QModelIndex & index );
};

#endif // SLOTSQCOLUMNVIEW_H

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQSTANDARDITEMMODEL_H
#define SLOTSQSTANDARDITEMMODEL_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QStandardItemModel>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQStandardItemModel: public QObject
{
  Q_OBJECT
  public:
  SlotsQStandardItemModel(QObject *parent = 0);
  ~SlotsQStandardItemModel();
  public slots:
  void itemChanged(QStandardItem *item);
};

#endif // SLOTSQSTANDARDITEMMODEL_H

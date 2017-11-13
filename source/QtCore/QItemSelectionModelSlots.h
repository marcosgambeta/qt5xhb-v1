/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQITEMSELECTIONMODEL_H
#define SLOTSQITEMSELECTIONMODEL_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QItemSelectionModel>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQItemSelectionModel: public QObject
{
  Q_OBJECT
  public:
  SlotsQItemSelectionModel(QObject *parent = 0);
  ~SlotsQItemSelectionModel();
  public slots:
  void selectionChanged(const QItemSelection &selected, const QItemSelection &deselected);
  void currentChanged(const QModelIndex &current, const QModelIndex &previous);
  void currentRowChanged(const QModelIndex &current, const QModelIndex &previous);
  void currentColumnChanged(const QModelIndex &current, const QModelIndex &previous);
};

#endif // SLOTSQITEMSELECTIONMODEL_H

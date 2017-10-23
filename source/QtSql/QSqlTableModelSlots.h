/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQSQLTABLEMODEL_H
#define SLOTSQSQLTABLEMODEL_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QSqlTableModel>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQSqlTableModel: public QObject
{
  Q_OBJECT
  public:
  SlotsQSqlTableModel(QObject *parent = 0);
  ~SlotsQSqlTableModel();
  public slots:
  void beforeDelete ( int row );
  void beforeInsert ( QSqlRecord & record );
  void beforeUpdate ( int row, QSqlRecord & record );
  void primeInsert ( int row, QSqlRecord & record );
};

#endif // SLOTSQSQLTABLEMODEL_H

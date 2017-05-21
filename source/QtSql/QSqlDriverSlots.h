/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQSQLDRIVER_H
#define SLOTSQSQLDRIVER_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QSqlDriver>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQSqlDriver: public QObject
{
  Q_OBJECT
  public:
  SlotsQSqlDriver(QObject *parent = 0);
  ~SlotsQSqlDriver();
  public slots:
  void notification ( const QString & name );
  void notification(const QString &name, QSqlDriver::NotificationSource source, const QVariant &payload);
};

#endif // SLOTSQSQLDRIVER_H

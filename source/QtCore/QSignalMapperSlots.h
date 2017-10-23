/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQSIGNALMAPPER_H
#define SLOTSQSIGNALMAPPER_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QSignalMapper>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQSignalMapper: public QObject
{
  Q_OBJECT
  public:
  SlotsQSignalMapper(QObject *parent = 0);
  ~SlotsQSignalMapper();
  public slots:
  void mapped(int arg);
  void mapped(const QString &arg);
  void mapped(QWidget *arg);
  void mapped(QObject *arg);
};

#endif // SLOTSQSIGNALMAPPER_H

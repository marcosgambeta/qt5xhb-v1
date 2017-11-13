/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQQMLEXPRESSION_H
#define SLOTSQQMLEXPRESSION_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QQmlExpression>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQQmlExpression: public QObject
{
  Q_OBJECT
  public:
  SlotsQQmlExpression(QObject *parent = 0);
  ~SlotsQQmlExpression();
  public slots:
  void valueChanged();
};

#endif // SLOTSQQMLEXPRESSION_H

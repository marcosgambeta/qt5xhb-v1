/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

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

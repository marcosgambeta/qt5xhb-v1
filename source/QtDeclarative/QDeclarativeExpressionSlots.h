/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQDECLARATIVEEXPRESSION_H
#define SLOTSQDECLARATIVEEXPRESSION_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QDeclarativeExpression>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQDeclarativeExpression: public QObject
{
  Q_OBJECT
  public:
  SlotsQDeclarativeExpression(QObject *parent = 0);
  ~SlotsQDeclarativeExpression();
  public slots:
  void valueChanged ();
};

#endif // SLOTSQDECLARATIVEEXPRESSION_H

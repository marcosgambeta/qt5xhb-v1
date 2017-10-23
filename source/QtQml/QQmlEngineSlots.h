/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQQMLENGINE_H
#define SLOTSQQMLENGINE_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QQmlEngine>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQQmlEngine: public QObject
{
  Q_OBJECT
  public:
  SlotsQQmlEngine(QObject *parent = 0);
  ~SlotsQQmlEngine();
  public slots:
  void quit();
};

#endif // SLOTSQQMLENGINE_H

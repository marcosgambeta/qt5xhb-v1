/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQOPENGLDEBUGLOGGER_H
#define SLOTSQOPENGLDEBUGLOGGER_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QOpenGLDebugLogger>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQOpenGLDebugLogger: public QObject
{
  Q_OBJECT
  public:
  SlotsQOpenGLDebugLogger(QObject *parent = 0);
  ~SlotsQOpenGLDebugLogger();
  public slots:
  void messageLogged(const QOpenGLDebugMessage &debugMessage);
};

#endif // SLOTSQOPENGLDEBUGLOGGER_H

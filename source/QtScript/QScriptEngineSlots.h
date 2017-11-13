/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQSCRIPTENGINE_H
#define SLOTSQSCRIPTENGINE_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QScriptEngine>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQScriptEngine: public QObject
{
  Q_OBJECT
  public:
  SlotsQScriptEngine(QObject *parent = 0);
  ~SlotsQScriptEngine();
  public slots:
  void signalHandlerException(const QScriptValue & exception);
};

#endif // SLOTSQSCRIPTENGINE_H

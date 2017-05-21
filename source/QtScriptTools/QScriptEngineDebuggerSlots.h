/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQSCRIPTENGINEDEBUGGER_H
#define SLOTSQSCRIPTENGINEDEBUGGER_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QScriptEngineDebugger>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQScriptEngineDebugger: public QObject
{
  Q_OBJECT
  public:
  SlotsQScriptEngineDebugger(QObject *parent = 0);
  ~SlotsQScriptEngineDebugger();
  public slots:
  void evaluationResumed();
  void evaluationSuspended();
};

#endif // SLOTSQSCRIPTENGINEDEBUGGER_H

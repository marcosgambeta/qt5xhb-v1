/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QScriptEngineDebuggerSlots.h"


static SlotsQScriptEngineDebugger * s = NULL;

SlotsQScriptEngineDebugger::SlotsQScriptEngineDebugger(QObject *parent) : QObject(parent)
{
}

SlotsQScriptEngineDebugger::~SlotsQScriptEngineDebugger()
{
}

void SlotsQScriptEngineDebugger::evaluationResumed()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "evaluationResumed()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQScriptEngineDebugger::evaluationSuspended()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "evaluationSuspended()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QSCRIPTENGINEDEBUGGER_ONEVALUATIONRESUMED )
{
  if( s == NULL )
  {
    s = new SlotsQScriptEngineDebugger(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "evaluationResumed()", "evaluationResumed()" ) );
}

HB_FUNC( QSCRIPTENGINEDEBUGGER_ONEVALUATIONSUSPENDED )
{
  if( s == NULL )
  {
    s = new SlotsQScriptEngineDebugger(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "evaluationSuspended()", "evaluationSuspended()" ) );
}

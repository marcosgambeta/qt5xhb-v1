/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

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

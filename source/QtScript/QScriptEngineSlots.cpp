/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QScriptEngineSlots.h"


static SlotsQScriptEngine * s = NULL;

SlotsQScriptEngine::SlotsQScriptEngine(QObject *parent) : QObject(parent)
{
}

SlotsQScriptEngine::~SlotsQScriptEngine()
{
}

void SlotsQScriptEngine::signalHandlerException(const QScriptValue & exception)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "signalHandlerException(QScriptValue)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pexception = hb_itemPutPtr( NULL, (QScriptValue *) &exception );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pexception );
    hb_itemRelease( psender );
    hb_itemRelease( pexception );
  }
}

HB_FUNC( QSCRIPTENGINE_ONSIGNALHANDLEREXCEPTION )
{
  if( s == NULL )
  {
    s = new SlotsQScriptEngine(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "signalHandlerException(QScriptValue)", "signalHandlerException(QScriptValue)" ) );
}

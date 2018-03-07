/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QScriptEngineSlots.h"

static QScriptEngineSlots * s = NULL;

QScriptEngineSlots::QScriptEngineSlots(QObject *parent) : QObject(parent)
{
}

QScriptEngineSlots::~QScriptEngineSlots()
{
}
void QScriptEngineSlots::signalHandlerException( const QScriptValue & exception )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "signalHandlerException(QScriptValue)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QSCRIPTENGINE" );
    PHB_ITEM pexception = Signals_return_object( (void *) &exception, "QSCRIPTVALUE" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pexception );
    hb_itemRelease( psender );
    hb_itemRelease( pexception );
  }
}

void QScriptEngineSlots_connect_signal ( const QString & signal, const QString & slot )
{
  if( s == NULL )
  {
    s = new QScriptEngineSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, signal, slot ) );
}

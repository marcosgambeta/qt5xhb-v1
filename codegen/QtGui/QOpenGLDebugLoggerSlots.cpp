/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QOpenGLDebugLoggerSlots.h"


static SlotsQOpenGLDebugLogger * s = NULL;

SlotsQOpenGLDebugLogger::SlotsQOpenGLDebugLogger(QObject *parent) : QObject(parent)
{
}

SlotsQOpenGLDebugLogger::~SlotsQOpenGLDebugLogger()
{
}

void SlotsQOpenGLDebugLogger::messageLogged(const QOpenGLDebugMessage &debugMessage)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "messageLogged(QOpenGLDebugMessage)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pdebugMessage = hb_itemPutPtr( NULL, (QOpenGLDebugMessage *) &debugMessage );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pdebugMessage );
    hb_itemRelease( psender );
    hb_itemRelease( pdebugMessage );
  }
}

HB_FUNC( QOPENGLDEBUGLOGGER_ONMESSAGELOGGED )
{
  if( s == NULL )
  {
    s = new SlotsQOpenGLDebugLogger(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "messageLogged(QOpenGLDebugMessage)", "messageLogged(QOpenGLDebugMessage)" ) );

}

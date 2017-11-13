/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QQmlEngineSlots.h"


static SlotsQQmlEngine * s = NULL;

SlotsQQmlEngine::SlotsQQmlEngine(QObject *parent) : QObject(parent)
{
}

SlotsQQmlEngine::~SlotsQQmlEngine()
{
}

void SlotsQQmlEngine::quit()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "quit()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QQMLENGINE_ONQUIT )
{
  if( s == NULL )
  {
    s = new SlotsQQmlEngine(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "quit()", "quit()" ) );
}

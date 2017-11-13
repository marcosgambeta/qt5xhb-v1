/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QTimerSlots.h"


static SlotsQTimer * s = NULL;

SlotsQTimer::SlotsQTimer(QObject *parent) : QObject(parent)
{
}

SlotsQTimer::~SlotsQTimer()
{
}

void SlotsQTimer::timeout()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "timeout()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QTIMER_ONTIMEOUT )
{
  if( s == NULL )
  {
    s = new SlotsQTimer(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "timeout()", "timeout()" ) );
}

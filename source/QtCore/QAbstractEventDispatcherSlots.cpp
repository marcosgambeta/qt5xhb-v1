/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QAbstractEventDispatcherSlots.h"


static SlotsQAbstractEventDispatcher * s = NULL;

SlotsQAbstractEventDispatcher::SlotsQAbstractEventDispatcher(QObject *parent) : QObject(parent)
{
}

SlotsQAbstractEventDispatcher::~SlotsQAbstractEventDispatcher()
{
}

void SlotsQAbstractEventDispatcher::aboutToBlock()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "aboutToBlock()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQAbstractEventDispatcher::awake()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "awake()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QABSTRACTEVENTDISPATCHER_ONABOUTTOBLOCK )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractEventDispatcher(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "aboutToBlock()", "aboutToBlock()" ) );
}

HB_FUNC( QABSTRACTEVENTDISPATCHER_ONAWAKE )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractEventDispatcher(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "awake()", "awake()" ) );
}

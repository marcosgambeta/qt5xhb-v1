/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QAbstractStateSlots.h"


static SlotsQAbstractState * s = NULL;

SlotsQAbstractState::SlotsQAbstractState(QObject *parent) : QObject(parent)
{
}

SlotsQAbstractState::~SlotsQAbstractState()
{
}

void SlotsQAbstractState::entered()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "entered()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQAbstractState::exited()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "exited()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QABSTRACTSTATE_ONENTERED )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractState(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "entered()", "entered()" ) );
}

HB_FUNC( QABSTRACTSTATE_ONEXITED )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractState(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "exited()", "exited()" ) );
}

/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QStateMachineSlots.h"


static SlotsQStateMachine * s = NULL;

SlotsQStateMachine::SlotsQStateMachine(QObject *parent) : QObject(parent)
{
}

SlotsQStateMachine::~SlotsQStateMachine()
{
}

void SlotsQStateMachine::started ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "started()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQStateMachine::stopped ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "stopped()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QSTATEMACHINE_ONSTARTED )
{
  if( s == NULL )
  {
    s = new SlotsQStateMachine(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "started()", "started()" ) );
}

HB_FUNC( QSTATEMACHINE_ONSTOPPED )
{
  if( s == NULL )
  {
    s = new SlotsQStateMachine(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "stopped()", "stopped()" ) );
}

/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QSequentialAnimationGroupSlots.h"


static SlotsQSequentialAnimationGroup * s = NULL;

SlotsQSequentialAnimationGroup::SlotsQSequentialAnimationGroup(QObject *parent) : QObject(parent)
{
}

SlotsQSequentialAnimationGroup::~SlotsQSequentialAnimationGroup()
{
}

void SlotsQSequentialAnimationGroup::currentAnimationChanged ( QAbstractAnimation * current )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentAnimationChanged(QAbstractAnimation*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcurrent = hb_itemPutPtr( NULL, (QAbstractAnimation *) current );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pcurrent );
    hb_itemRelease( psender );
    hb_itemRelease( pcurrent );
  }
}

HB_FUNC( QSEQUENTIALANIMATIONGROUP_ONCURRENTANIMATIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQSequentialAnimationGroup(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "currentAnimationChanged(QAbstractAnimation*)", "currentAnimationChanged(QAbstractAnimation*)" ) );
}

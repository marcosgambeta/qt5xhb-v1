/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QGraphicsEffectSlots.h"


static SlotsQGraphicsEffect * s = NULL;

SlotsQGraphicsEffect::SlotsQGraphicsEffect(QObject *parent) : QObject(parent)
{
}

SlotsQGraphicsEffect::~SlotsQGraphicsEffect()
{
}

void SlotsQGraphicsEffect::enabledChanged ( bool enabled )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "enabledChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM penabled = hb_itemPutL( NULL, enabled );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, penabled );
    hb_itemRelease( psender );
    hb_itemRelease( penabled );
  }
}

HB_FUNC( QGRAPHICSEFFECT_ONENABLEDCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQGraphicsEffect(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "enabledChanged(bool)", "enabledChanged(bool)" ) );
}

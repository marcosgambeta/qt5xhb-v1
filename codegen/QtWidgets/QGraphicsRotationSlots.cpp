/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QGraphicsRotationSlots.h"


static SlotsQGraphicsRotation * s = NULL;

SlotsQGraphicsRotation::SlotsQGraphicsRotation(QObject *parent) : QObject(parent)
{
}

SlotsQGraphicsRotation::~SlotsQGraphicsRotation()
{
}

void SlotsQGraphicsRotation::angleChanged ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "angleChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQGraphicsRotation::axisChanged ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "axisChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQGraphicsRotation::originChanged ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "originChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QGRAPHICSROTATION_ONANGLECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQGraphicsRotation(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "angleChanged()", "angleChanged()" ) );
}

HB_FUNC( QGRAPHICSROTATION_ONAXISCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQGraphicsRotation(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "axisChanged()", "axisChanged()" ) );
}

HB_FUNC( QGRAPHICSROTATION_ONORIGINCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQGraphicsRotation(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "originChanged()", "originChanged()" ) );
}

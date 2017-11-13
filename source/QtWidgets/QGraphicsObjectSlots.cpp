/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QGraphicsObjectSlots.h"


static SlotsQGraphicsObject * s = NULL;

SlotsQGraphicsObject::SlotsQGraphicsObject(QObject *parent) : QObject(parent)
{
}

SlotsQGraphicsObject::~SlotsQGraphicsObject()
{
}

void SlotsQGraphicsObject::enabledChanged ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "enabledChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQGraphicsObject::opacityChanged ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "opacityChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQGraphicsObject::parentChanged ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "parentChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQGraphicsObject::rotationChanged ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "rotationChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQGraphicsObject::scaleChanged ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "scaleChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQGraphicsObject::visibleChanged ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "visibleChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQGraphicsObject::xChanged ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "xChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQGraphicsObject::yChanged ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "yChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQGraphicsObject::zChanged ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "zChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QGRAPHICSOBJECT_ONENABLEDCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQGraphicsObject(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "enabledChanged()", "enabledChanged()" ) );
}

HB_FUNC( QGRAPHICSOBJECT_ONOPACITYCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQGraphicsObject(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "opacityChanged()", "opacityChanged()" ) );
}

HB_FUNC( QGRAPHICSOBJECT_ONPARENTCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQGraphicsObject(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "parentChanged()", "parentChanged()" ) );
}

HB_FUNC( QGRAPHICSOBJECT_ONROTATIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQGraphicsObject(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "rotationChanged()", "rotationChanged()" ) );
}

HB_FUNC( QGRAPHICSOBJECT_ONSCALECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQGraphicsObject(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "scaleChanged()", "scaleChanged()" ) );
}

HB_FUNC( QGRAPHICSOBJECT_ONVISIBLECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQGraphicsObject(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "visibleChanged()", "visibleChanged()" ) );
}

HB_FUNC( QGRAPHICSOBJECT_ONXCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQGraphicsObject(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "xChanged()", "xChanged()" ) );
}

HB_FUNC( QGRAPHICSOBJECT_ONYCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQGraphicsObject(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "yChanged()", "yChanged()" ) );
}

HB_FUNC( QGRAPHICSOBJECT_ONZCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQGraphicsObject(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "zChanged()", "zChanged()" ) );
}

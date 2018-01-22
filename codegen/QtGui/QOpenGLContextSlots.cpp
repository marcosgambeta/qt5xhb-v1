/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QOpenGLContextSlots.h"


static SlotsQOpenGLContext * s = NULL;

SlotsQOpenGLContext::SlotsQOpenGLContext(QObject *parent) : QObject(parent)
{
}

SlotsQOpenGLContext::~SlotsQOpenGLContext()
{
}

void SlotsQOpenGLContext::aboutToBeDestroyed()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "aboutToBeDestroyed()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QOPENGLCONTEXT_ONABOUTTOBEDESTROYED )
{
  if( s == NULL )
  {
    s = new SlotsQOpenGLContext(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "aboutToBeDestroyed()", "aboutToBeDestroyed()" ) );

}

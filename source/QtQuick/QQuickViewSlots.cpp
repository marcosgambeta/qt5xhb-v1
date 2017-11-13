/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QQuickViewSlots.h"


static SlotsQQuickView * s = NULL;

SlotsQQuickView::SlotsQQuickView(QObject *parent) : QObject(parent)
{
}

SlotsQQuickView::~SlotsQQuickView()
{
}

void SlotsQQuickView::statusChanged(QQuickView::Status status)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "statusChanged(QQuickView::Status)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstatus = hb_itemPutNI( NULL, (int) status );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pstatus );
    hb_itemRelease( psender );
    hb_itemRelease( pstatus );
  }
}

HB_FUNC( QQUICKVIEW_ONSTATUSCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQQuickView(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "statusChanged(QQuickView::Status)", "statusChanged(QQuickView::Status)" ) );
}

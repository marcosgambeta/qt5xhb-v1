/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QColumnViewSlots.h"


static SlotsQColumnView * s = NULL;

SlotsQColumnView::SlotsQColumnView(QObject *parent) : QObject(parent)
{
}

SlotsQColumnView::~SlotsQColumnView()
{
}

void SlotsQColumnView::updatePreviewWidget ( const QModelIndex & index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "updatePreviewWidget(QModelIndex)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pindex = hb_itemPutPtr( NULL, (QModelIndex *) &index );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}

HB_FUNC( QCOLUMNVIEW_ONUPDATEPREVIEWWIDGET )
{
  if( s == NULL )
  {
    s = new SlotsQColumnView(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "updatePreviewWidget(QModelIndex)", "updatePreviewWidget(QModelIndex)" ) );
}

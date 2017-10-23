/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QTreeViewSlots.h"


static SlotsQTreeView * s = NULL;

SlotsQTreeView::SlotsQTreeView(QObject *parent) : QObject(parent)
{
}

SlotsQTreeView::~SlotsQTreeView()
{
}

void SlotsQTreeView::collapsed ( const QModelIndex & index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "collapsed(QModelIndex)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pindex = hb_itemPutPtr( NULL, (QModelIndex *) &index );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}

void SlotsQTreeView::expanded ( const QModelIndex & index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "expanded(QModelIndex)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pindex = hb_itemPutPtr( NULL, (QModelIndex *) &index );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}

HB_FUNC( QTREEVIEW_ONCOLLAPSED )
{
  if( s == NULL )
  {
    s = new SlotsQTreeView(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "collapsed(QModelIndex)", "collapsed(QModelIndex)" ) );
}

HB_FUNC( QTREEVIEW_ONEXPANDED )
{
  if( s == NULL )
  {
    s = new SlotsQTreeView(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "expanded(QModelIndex)", "expanded(QModelIndex)" ) );
}

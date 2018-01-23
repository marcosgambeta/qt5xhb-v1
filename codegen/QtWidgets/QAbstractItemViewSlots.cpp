%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "QAbstractItemViewSlots.h"

static SlotsQAbstractItemView * s = NULL;

SlotsQAbstractItemView::SlotsQAbstractItemView(QObject *parent) : QObject(parent)
{
}

SlotsQAbstractItemView::~SlotsQAbstractItemView()
{
}

void SlotsQAbstractItemView::activated ( const QModelIndex & index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "activated(QModelIndex)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pindex = hb_itemPutPtr( NULL, (QModelIndex *) &index );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}

void SlotsQAbstractItemView::clicked ( const QModelIndex & index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "clicked(QModelIndex)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pindex = hb_itemPutPtr( NULL, (QModelIndex *) &index );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}

void SlotsQAbstractItemView::doubleClicked ( const QModelIndex & index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "doubleClicked(QModelIndex)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pindex = hb_itemPutPtr( NULL, (QModelIndex *) &index );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}

void SlotsQAbstractItemView::entered ( const QModelIndex & index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "entered(QModelIndex)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pindex = hb_itemPutPtr( NULL, (QModelIndex *) &index );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}

void SlotsQAbstractItemView::pressed ( const QModelIndex & index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "pressed(QModelIndex)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pindex = hb_itemPutPtr( NULL, (QModelIndex *) &index );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}

void SlotsQAbstractItemView::viewportEntered ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "viewportEntered()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QABSTRACTITEMVIEW_ONACTIVATED )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractItemView(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "activated(QModelIndex)", "activated(QModelIndex)" ) );
}

HB_FUNC( QABSTRACTITEMVIEW_ONCLICKED )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractItemView(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "clicked(QModelIndex)", "clicked(QModelIndex)" ) );
}

HB_FUNC( QABSTRACTITEMVIEW_ONDOUBLECLICKED )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractItemView(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "doubleClicked(QModelIndex)", "doubleClicked(QModelIndex)" ) );
}

HB_FUNC( QABSTRACTITEMVIEW_ONENTERED )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractItemView(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "entered(QModelIndex)", "entered(QModelIndex)" ) );
}

HB_FUNC( QABSTRACTITEMVIEW_ONPRESSED )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractItemView(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "pressed(QModelIndex)", "pressed(QModelIndex)" ) );
}

HB_FUNC( QABSTRACTITEMVIEW_ONVIEWPORTENTERED )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractItemView(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "viewportEntered()", "viewportEntered()" ) );
}
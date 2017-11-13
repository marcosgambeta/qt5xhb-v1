/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QTabBarSlots.h"


static SlotsQTabBar * s = NULL;

SlotsQTabBar::SlotsQTabBar(QObject *parent) : QObject(parent)
{
}

SlotsQTabBar::~SlotsQTabBar()
{
}

void SlotsQTabBar::currentChanged ( int index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}

void SlotsQTabBar::tabCloseRequested ( int index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "tabCloseRequested(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}

void SlotsQTabBar::tabMoved ( int from, int to )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "tabMoved(int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pfrom = hb_itemPutNI( NULL, from );
    PHB_ITEM pto = hb_itemPutNI( NULL, to );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pfrom, pto );
    hb_itemRelease( psender );
    hb_itemRelease( pfrom );
    hb_itemRelease( pto );
  }
}

HB_FUNC( QTABBAR_ONCURRENTCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQTabBar(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "currentChanged(int)", "currentChanged(int)" ) );
}

HB_FUNC( QTABBAR_ONTABCLOSEREQUESTED )
{
  if( s == NULL )
  {
    s = new SlotsQTabBar(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "tabCloseRequested(int)", "tabCloseRequested(int)" ) );
}

HB_FUNC( QTABBAR_ONTABMOVED )
{
  if( s == NULL )
  {
    s = new SlotsQTabBar(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "tabMoved(int,int)", "tabMoved(int,int)" ) );
}

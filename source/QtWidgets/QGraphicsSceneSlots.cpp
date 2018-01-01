/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QGraphicsSceneSlots.h"


static SlotsQGraphicsScene * s = NULL;

SlotsQGraphicsScene::SlotsQGraphicsScene(QObject *parent) : QObject(parent)
{
}

SlotsQGraphicsScene::~SlotsQGraphicsScene()
{
}

void SlotsQGraphicsScene::changed ( const QList<QRectF> & region )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "changed(QList<QRectF>)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QRECTF" );
    PHB_ITEM pregion = hb_itemArrayNew(0);
    int i;
    for(i=0;i<region.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pTempObject = hb_itemNew( NULL );
        hb_itemCopy( pTempObject, hb_stackReturnItem() );
        PHB_ITEM pTempItem = hb_itemNew( NULL );
        hb_itemPutPtr( pTempItem, (QRectF *) new QRectF ( region [i] ) );
        hb_objSendMsg( pTempObject, "NEWFROMPOINTER", 1, pTempItem );
        hb_arrayAddForward( pregion, pTempObject );
        hb_itemRelease( pTempObject );
        hb_itemRelease( pTempItem );
      }
    }
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pregion );
    hb_itemRelease( psender );
    hb_itemRelease( pregion );
  }
}

void SlotsQGraphicsScene::sceneRectChanged ( const QRectF & rect )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sceneRectChanged(QRectF)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM prect = hb_itemPutPtr( NULL, (QRectF *) &rect );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, prect );
    hb_itemRelease( psender );
    hb_itemRelease( prect );
  }
}

void SlotsQGraphicsScene::selectionChanged ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "selectionChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QGRAPHICSSCENE_ONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQGraphicsScene(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "changed(QList<QRectF>)", "changed(QList<QRectF>)" ) );
}

HB_FUNC( QGRAPHICSSCENE_ONSCENERECTCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQGraphicsScene(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "sceneRectChanged(QRectF)", "sceneRectChanged(QRectF)" ) );
}

HB_FUNC( QGRAPHICSSCENE_ONSELECTIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQGraphicsScene(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "selectionChanged()", "selectionChanged()" ) );
}

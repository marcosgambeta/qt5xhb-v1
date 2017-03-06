/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QListViewSlots.h"


static SlotsQListView * s = NULL;

SlotsQListView::SlotsQListView(QObject *parent) : QObject(parent)
{
}

SlotsQListView::~SlotsQListView()
{
}

void SlotsQListView::indexesMoved ( const QModelIndexList & indexes )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "indexesMoved(QModelIndexList)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QMODELINDEX" );
    #else
    pDynSym = hb_dynsymFindName( "QMODELINDEX" );
    #endif
    PHB_ITEM pindexes = hb_itemArrayNew(0);
    int i;
    for(i=0;i<indexes.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pTempObject = hb_itemNew( NULL );
        hb_itemCopy( pTempObject, hb_stackReturnItem() );
        PHB_ITEM pTempItem = hb_itemNew( NULL );
        hb_itemPutPtr( pTempItem, (QModelIndex *) new QModelIndex ( indexes [i] ) );
        hb_objSendMsg( pTempObject, "NEWFROMPOINTER", 1, pTempItem );
        hb_arrayAddForward( pindexes, pTempObject );
        hb_itemRelease( pTempObject );
        hb_itemRelease( pTempItem );
        }
      }
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pindexes );
    hb_itemRelease( psender );
    hb_itemRelease( pindexes );
  }
}

HB_FUNC( QLISTVIEW_ONINDEXESMOVED )
{
  if( s == NULL )
  {
    s = new SlotsQListView(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "indexesMoved(QModelIndexList)", "indexesMoved(QModelIndexList)" ) );
}

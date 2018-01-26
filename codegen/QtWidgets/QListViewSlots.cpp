%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQListView::indexesMoved( const QModelIndexList & indexes )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "indexesMoved(QModelIndexList)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QMODELINDEX" );
    PHB_ITEM pindexes = hb_itemArrayNew(0);
    int i;
    for(i=0;i<indexes.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
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
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QMODELINDEX", HB_ERR_ARGS_BASEPARAMS );
      }
    }
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pindexes );
    hb_itemRelease( psender );
    hb_itemRelease( pindexes );
  }
}

$signalMethod=|indexesMoved(QModelIndexList)

$endSlotsClass

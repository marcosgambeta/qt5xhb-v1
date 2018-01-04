/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QHELPSEARCHQUERY
REQUEST QHELPSEARCHQUERYWIDGET
REQUEST QHELPSEARCHRESULTWIDGET
#endif

CLASS QHelpSearchEngine INHERIT QObject

   METHOD new
   METHOD delete
   METHOD hitCount
   METHOD query
   METHOD queryWidget
   METHOD resultWidget
   METHOD cancelIndexing
   METHOD cancelSearching
   METHOD reindexDocumentation
   METHOD search

   METHOD onIndexingFinished
   METHOD onIndexingStarted
   METHOD onSearchingFinished
   METHOD onSearchingStarted

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QHelpSearchEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QHelpSearchEngine>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QHelpSearchEngine>
#endif

/*
QHelpSearchEngine ( QHelpEngineCore * helpEngine, QObject * parent = 0 )
*/
HB_FUNC_STATIC( QHELPSEARCHENGINE_NEW )
{
  QHelpEngineCore * par1 = (QHelpEngineCore *) _qt5xhb_itemGetPtr(1);
  QHelpSearchEngine * o = new QHelpSearchEngine ( par1, OPQOBJECT(2,0) );
  _qt5xhb_returnNewObject( o, false );
}


HB_FUNC_STATIC( QHELPSEARCHENGINE_DELETE )
{
  QHelpSearchEngine * obj = (QHelpSearchEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
int hitCount () const
*/
HB_FUNC_STATIC( QHELPSEARCHENGINE_HITCOUNT )
{
  QHelpSearchEngine * obj = (QHelpSearchEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->hitCount () );
  }
}



/*
QList<QHelpSearchQuery> query () const
*/
HB_FUNC_STATIC( QHELPSEARCHENGINE_QUERY )
{
  QHelpSearchEngine * obj = (QHelpSearchEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QHelpSearchQuery> list = obj->query ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QHELPSEARCHQUERY" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QHelpSearchQuery *) new QHelpSearchQuery ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
QHelpSearchQueryWidget * queryWidget ()
*/
HB_FUNC_STATIC( QHELPSEARCHENGINE_QUERYWIDGET )
{
  QHelpSearchEngine * obj = (QHelpSearchEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QHelpSearchQueryWidget * ptr = obj->queryWidget ();
    _qt5xhb_createReturnClass ( ptr, "QHELPSEARCHQUERYWIDGET" );
  }
}


/*
QHelpSearchResultWidget * resultWidget ()
*/
HB_FUNC_STATIC( QHELPSEARCHENGINE_RESULTWIDGET )
{
  QHelpSearchEngine * obj = (QHelpSearchEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QHelpSearchResultWidget * ptr = obj->resultWidget ();
    _qt5xhb_createReturnClass ( ptr, "QHELPSEARCHRESULTWIDGET" );
  }
}


/*
void cancelIndexing ()
*/
HB_FUNC_STATIC( QHELPSEARCHENGINE_CANCELINDEXING )
{
  QHelpSearchEngine * obj = (QHelpSearchEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->cancelIndexing ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void cancelSearching ()
*/
HB_FUNC_STATIC( QHELPSEARCHENGINE_CANCELSEARCHING )
{
  QHelpSearchEngine * obj = (QHelpSearchEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->cancelSearching ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void reindexDocumentation ()
*/
HB_FUNC_STATIC( QHELPSEARCHENGINE_REINDEXDOCUMENTATION )
{
  QHelpSearchEngine * obj = (QHelpSearchEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->reindexDocumentation ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void search ( const QList<QHelpSearchQuery> & queryList )
*/
HB_FUNC_STATIC( QHELPSEARCHENGINE_SEARCH )
{
  QHelpSearchEngine * obj = (QHelpSearchEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QHelpSearchQuery> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QHelpSearchQuery *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->search ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP

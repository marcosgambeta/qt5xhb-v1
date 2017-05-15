/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPLACESEARCHRESULT
REQUEST QPLACESEARCHREQUEST
#endif

CLASS QPlaceSearchReply INHERIT QPlaceReply

   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD type
   METHOD results
   METHOD request
   METHOD previousPageRequest
   METHOD nextPageRequest

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPlaceSearchReply
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QPlaceSearchReply>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QPlaceSearchReply>
#endif
#endif

#include <QPlaceSearchRequest>

/*
explicit QPlaceSearchReply(QObject *parent = 0)
*/
HB_FUNC_STATIC( QPLACESEARCHREPLY_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QPlaceSearchReply * o = new QPlaceSearchReply ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}


HB_FUNC_STATIC( QPLACESEARCHREPLY_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSearchReply * obj = (QPlaceSearchReply *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
#endif
}

/*
QPlaceReply::Type type() const
*/
HB_FUNC_STATIC( QPLACESEARCHREPLY_TYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSearchReply * obj = (QPlaceSearchReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->type ();
    hb_retni( i );
  }
#endif
}


/*
QList<QPlaceSearchResult> results() const
*/
HB_FUNC_STATIC( QPLACESEARCHREPLY_RESULTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSearchReply * obj = (QPlaceSearchReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QPlaceSearchResult> list = obj->results ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QPLACESEARCHRESULT" );
    #else
    pDynSym = hb_dynsymFindName( "QPLACESEARCHRESULT" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
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
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QPlaceSearchResult *) new QPlaceSearchResult ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
#endif
}


/*
QPlaceSearchRequest request() const
*/
HB_FUNC_STATIC( QPLACESEARCHREPLY_REQUEST )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSearchReply * obj = (QPlaceSearchReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceSearchRequest * ptr = new QPlaceSearchRequest( obj->request () );
    _qt5xhb_createReturnClass ( ptr, "QPLACESEARCHREQUEST", true );
  }
#endif
}


/*
QPlaceSearchRequest previousPageRequest() const
*/
HB_FUNC_STATIC( QPLACESEARCHREPLY_PREVIOUSPAGEREQUEST )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSearchReply * obj = (QPlaceSearchReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceSearchRequest * ptr = new QPlaceSearchRequest( obj->previousPageRequest () );
    _qt5xhb_createReturnClass ( ptr, "QPLACESEARCHREQUEST", true );
  }
#endif
}


/*
QPlaceSearchRequest nextPageRequest() const
*/
HB_FUNC_STATIC( QPLACESEARCHREPLY_NEXTPAGEREQUEST )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSearchReply * obj = (QPlaceSearchReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceSearchRequest * ptr = new QPlaceSearchRequest( obj->nextPageRequest () );
    _qt5xhb_createReturnClass ( ptr, "QPLACESEARCHREQUEST", true );
  }
#endif
}



#pragma ENDDUMP

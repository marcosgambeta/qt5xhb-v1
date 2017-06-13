/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPLACE
#endif

CLASS QPlaceMatchRequest

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD places
   METHOD setPlaces
   METHOD setResults
   METHOD clear

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPlaceMatchRequest
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QPlaceMatchRequest>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QPlaceMatchRequest>
#endif
#endif

/*
QPlaceMatchRequest()
*/
void QPlaceMatchRequest_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceMatchRequest * o = new QPlaceMatchRequest ();
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QPlaceMatchRequest(const QPlaceMatchRequest &other)
*/
void QPlaceMatchRequest_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceMatchRequest * o = new QPlaceMatchRequest ( *PQPLACEMATCHREQUEST(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}


//[1]QPlaceMatchRequest()
//[2]QPlaceMatchRequest(const QPlaceMatchRequest &other)

HB_FUNC_STATIC( QPLACEMATCHREQUEST_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceMatchRequest_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACEMATCHREQUEST(1) )
  {
    QPlaceMatchRequest_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPLACEMATCHREQUEST_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceMatchRequest * obj = (QPlaceMatchRequest *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QList<QPlace> places() const
*/
HB_FUNC_STATIC( QPLACEMATCHREQUEST_PLACES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceMatchRequest * obj = (QPlaceMatchRequest *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QPlace> list = obj->places ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QPLACE" );
    #else
    pDynSym = hb_dynsymFindName( "QPLACE" );
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
        hb_itemPutPtr( pItem, (QPlace *) new QPlace ( list[i] ) );
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
void setPlaces(const QList<QPlace> places)
*/
HB_FUNC_STATIC( QPLACEMATCHREQUEST_SETPLACES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceMatchRequest * obj = (QPlaceMatchRequest *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QPlace> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QPlace *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->setPlaces ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void setResults(const QList<QPlaceSearchResult> &results)
*/
HB_FUNC_STATIC( QPLACEMATCHREQUEST_SETRESULTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceMatchRequest * obj = (QPlaceMatchRequest *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QPlaceSearchResult> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QPlaceSearchResult *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->setResults ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



/*
void clear()
*/
HB_FUNC_STATIC( QPLACEMATCHREQUEST_CLEAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceMatchRequest * obj = (QPlaceMatchRequest *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



HB_FUNC_STATIC( QPLACEMATCHREQUEST_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QPLACEMATCHREQUEST_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QPLACEMATCHREQUEST_NEWFROM );
}

HB_FUNC_STATIC( QPLACEMATCHREQUEST_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QPLACEMATCHREQUEST_NEWFROM );
}

HB_FUNC_STATIC( QPLACEMATCHREQUEST_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QPLACEMATCHREQUEST_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP

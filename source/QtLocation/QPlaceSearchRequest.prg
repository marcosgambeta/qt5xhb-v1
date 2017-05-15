/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPLACECATEGORY
REQUEST QGEOSHAPE
REQUEST QVARIANT
#endif

CLASS QPlaceSearchRequest

   DATA pointer
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD searchTerm
   METHOD setSearchTerm
   METHOD categories
   METHOD setCategory
   METHOD setCategories
   METHOD searchArea
   METHOD setSearchArea
   METHOD recommendationId
   METHOD setRecommendationId
   METHOD searchContext
   METHOD setSearchContext
   METHOD visibilityScope
   METHOD setVisibilityScope
   METHOD relevanceHint
   METHOD setRelevanceHint
   METHOD limit
   METHOD setLimit
   METHOD clear

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPlaceSearchRequest
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QPlaceSearchRequest>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QPlaceSearchRequest>
#endif
#endif

#include <QGeoShape>
#include <QVariant>

/*
QPlaceSearchRequest()
*/
void QPlaceSearchRequest_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSearchRequest * o = new QPlaceSearchRequest ();
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QPlaceSearchRequest(const QPlaceSearchRequest &other)
*/
void QPlaceSearchRequest_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSearchRequest * par1 = (QPlaceSearchRequest *) _qt5xhb_itemGetPtr(1);
  QPlaceSearchRequest * o = new QPlaceSearchRequest ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}


//[1]QPlaceSearchRequest()
//[2]QPlaceSearchRequest(const QPlaceSearchRequest &other)

HB_FUNC_STATIC( QPLACESEARCHREQUEST_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceSearchRequest_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACESEARCHREQUEST(1) )
  {
    QPlaceSearchRequest_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPLACESEARCHREQUEST_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSearchRequest * obj = (QPlaceSearchRequest *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString searchTerm() const
*/
HB_FUNC_STATIC( QPLACESEARCHREQUEST_SEARCHTERM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSearchRequest * obj = (QPlaceSearchRequest *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->searchTerm ().toLatin1().data() );
  }
#endif
}

/*
void setSearchTerm(const QString &term)
*/
HB_FUNC_STATIC( QPLACESEARCHREQUEST_SETSEARCHTERM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSearchRequest * obj = (QPlaceSearchRequest *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSearchTerm ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QList<QPlaceCategory> categories() const
*/
HB_FUNC_STATIC( QPLACESEARCHREQUEST_CATEGORIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSearchRequest * obj = (QPlaceSearchRequest *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QPlaceCategory> list = obj->categories ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QPLACECATEGORY" );
    #else
    pDynSym = hb_dynsymFindName( "QPLACECATEGORY" );
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
        hb_itemPutPtr( pItem, (QPlaceCategory *) new QPlaceCategory ( list[i] ) );
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
void setCategory(const QPlaceCategory &category)
*/
HB_FUNC_STATIC( QPLACESEARCHREQUEST_SETCATEGORY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSearchRequest * obj = (QPlaceSearchRequest *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceCategory * par1 = (QPlaceCategory *) _qt5xhb_itemGetPtr(1);
    obj->setCategory ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setCategories(const QList<QPlaceCategory> &categories)
*/
HB_FUNC_STATIC( QPLACESEARCHREQUEST_SETCATEGORIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSearchRequest * obj = (QPlaceSearchRequest *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QPlaceCategory> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QPlaceCategory *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->setCategories ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QGeoShape searchArea() const
*/
HB_FUNC_STATIC( QPLACESEARCHREQUEST_SEARCHAREA )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSearchRequest * obj = (QPlaceSearchRequest *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoShape * ptr = new QGeoShape( obj->searchArea () );
    _qt5xhb_createReturnClass ( ptr, "QGEOSHAPE", true );
  }
#endif
}

/*
void setSearchArea(const QGeoShape &area)
*/
HB_FUNC_STATIC( QPLACESEARCHREQUEST_SETSEARCHAREA )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSearchRequest * obj = (QPlaceSearchRequest *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoShape * par1 = (QGeoShape *) _qt5xhb_itemGetPtr(1);
    obj->setSearchArea ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString recommendationId() const
*/
HB_FUNC_STATIC( QPLACESEARCHREQUEST_RECOMMENDATIONID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSearchRequest * obj = (QPlaceSearchRequest *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->recommendationId ().toLatin1().data() );
  }
#endif
}

/*
void setRecommendationId(const QString &recommendationId)
*/
HB_FUNC_STATIC( QPLACESEARCHREQUEST_SETRECOMMENDATIONID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSearchRequest * obj = (QPlaceSearchRequest *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRecommendationId ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QVariant searchContext() const
*/
HB_FUNC_STATIC( QPLACESEARCHREQUEST_SEARCHCONTEXT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSearchRequest * obj = (QPlaceSearchRequest *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->searchContext () );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
#endif
}

/*
void setSearchContext(const QVariant &context)
*/
HB_FUNC_STATIC( QPLACESEARCHREQUEST_SETSEARCHCONTEXT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSearchRequest * obj = (QPlaceSearchRequest *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * par1 = (QVariant *) _qt5xhb_itemGetPtr(1);
    obj->setSearchContext ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QLocation::VisibilityScope visibilityScope() const
*/
HB_FUNC_STATIC( QPLACESEARCHREQUEST_VISIBILITYSCOPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSearchRequest * obj = (QPlaceSearchRequest *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->visibilityScope ();
    hb_retni( i );
  }
#endif
}

/*
void setVisibilityScope(QLocation::VisibilityScope visibilityScopes)
*/
HB_FUNC_STATIC( QPLACESEARCHREQUEST_SETVISIBILITYSCOPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSearchRequest * obj = (QPlaceSearchRequest *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setVisibilityScope (  (QLocation::VisibilityScope) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
RelevanceHint relevanceHint() const
*/
HB_FUNC_STATIC( QPLACESEARCHREQUEST_RELEVANCEHINT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSearchRequest * obj = (QPlaceSearchRequest *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->relevanceHint ();
    hb_retni( i );
  }
#endif
}

/*
void setRelevanceHint(RelevanceHint hint)
*/
HB_FUNC_STATIC( QPLACESEARCHREQUEST_SETRELEVANCEHINT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSearchRequest * obj = (QPlaceSearchRequest *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setRelevanceHint (  (QPlaceSearchRequest::RelevanceHint) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
int limit() const
*/
HB_FUNC_STATIC( QPLACESEARCHREQUEST_LIMIT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSearchRequest * obj = (QPlaceSearchRequest *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->limit () );
  }
#endif
}

/*
void setLimit(int limit)
*/
HB_FUNC_STATIC( QPLACESEARCHREQUEST_SETLIMIT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSearchRequest * obj = (QPlaceSearchRequest *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLimit ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void clear()
*/
HB_FUNC_STATIC( QPLACESEARCHREQUEST_CLEAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSearchRequest * obj = (QPlaceSearchRequest *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



HB_FUNC_STATIC( QPLACESEARCHREQUEST_NEWFROM )
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

HB_FUNC_STATIC( QPLACESEARCHREQUEST_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QPLACESEARCHREQUEST_NEWFROM );
}

HB_FUNC_STATIC( QPLACESEARCHREQUEST_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QPLACESEARCHREQUEST_NEWFROM );
}

HB_FUNC_STATIC( QPLACESEARCHREQUEST_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QPLACESEARCHREQUEST_SETSELFDESTRUCTION )
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

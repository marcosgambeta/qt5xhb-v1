/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPLACEDETAILSREPLY
REQUEST QPLACECONTENTREPLY
REQUEST QPLACESEARCHREPLY
REQUEST QPLACESEARCHSUGGESTIONREPLY
REQUEST QPLACEIDREPLY
REQUEST QPLACEREPLY
REQUEST QPLACECATEGORY
REQUEST QLOCALE
REQUEST QURL
REQUEST QPLACE
REQUEST QPLACEMATCHREPLY
#endif

CLASS QPlaceManagerEngine INHERIT QObject

   METHOD delete
   METHOD managerName
   METHOD managerVersion
   METHOD getPlaceDetails
   METHOD getPlaceContent
   METHOD search
   METHOD searchSuggestions
   METHOD savePlace
   METHOD removePlace
   METHOD saveCategory
   METHOD removeCategory
   METHOD initializeCategories
   METHOD parentCategoryId
   METHOD childCategoryIds
   METHOD category
   METHOD childCategories
   METHOD locales
   METHOD setLocales
   METHOD constructIconUrl
   METHOD compatiblePlace
   METHOD matchingPlaces

   METHOD onFinished
   METHOD onError
   METHOD onPlaceAdded
   METHOD onPlaceUpdated
   METHOD onPlaceRemoved
   METHOD onCategoryAdded
   METHOD onCategoryUpdated
   METHOD onCategoryRemoved
   METHOD onDataChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPlaceManagerEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QPlaceManagerEngine>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QPlaceManagerEngine>
#endif
#endif


HB_FUNC_STATIC( QPLACEMANAGERENGINE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * obj = (QPlaceManagerEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString managerName() const
*/
HB_FUNC_STATIC( QPLACEMANAGERENGINE_MANAGERNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * obj = (QPlaceManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->managerName () );
  }
#endif
}


/*
int managerVersion() const
*/
HB_FUNC_STATIC( QPLACEMANAGERENGINE_MANAGERVERSION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * obj = (QPlaceManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->managerVersion () );
  }
#endif
}


/*
virtual QPlaceDetailsReply *getPlaceDetails(const QString &placeId)
*/
HB_FUNC_STATIC( QPLACEMANAGERENGINE_GETPLACEDETAILS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * obj = (QPlaceManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceDetailsReply * ptr = obj->getPlaceDetails ( PQSTRING(1) );
    _qt5xhb_createReturnClass ( ptr, "QPLACEDETAILSREPLY" );
  }
#endif
}


/*
virtual QPlaceContentReply *getPlaceContent(const QPlaceContentRequest &request)
*/
HB_FUNC_STATIC( QPLACEMANAGERENGINE_GETPLACECONTENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * obj = (QPlaceManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceContentReply * ptr = obj->getPlaceContent ( *PQPLACECONTENTREQUEST(1) );
    _qt5xhb_createReturnClass ( ptr, "QPLACECONTENTREPLY" );
  }
#endif
}


/*
virtual QPlaceSearchReply *search(const QPlaceSearchRequest &request)
*/
HB_FUNC_STATIC( QPLACEMANAGERENGINE_SEARCH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * obj = (QPlaceManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceSearchReply * ptr = obj->search ( *PQPLACESEARCHREQUEST(1) );
    _qt5xhb_createReturnClass ( ptr, "QPLACESEARCHREPLY" );
  }
#endif
}


/*
virtual QPlaceSearchSuggestionReply *searchSuggestions(const QPlaceSearchRequest &request)
*/
HB_FUNC_STATIC( QPLACEMANAGERENGINE_SEARCHSUGGESTIONS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * obj = (QPlaceManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceSearchSuggestionReply * ptr = obj->searchSuggestions ( *PQPLACESEARCHREQUEST(1) );
    _qt5xhb_createReturnClass ( ptr, "QPLACESEARCHSUGGESTIONREPLY" );
  }
#endif
}


/*
virtual QPlaceIdReply *savePlace(const QPlace &place)
*/
HB_FUNC_STATIC( QPLACEMANAGERENGINE_SAVEPLACE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * obj = (QPlaceManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceIdReply * ptr = obj->savePlace ( *PQPLACE(1) );
    _qt5xhb_createReturnClass ( ptr, "QPLACEIDREPLY" );
  }
#endif
}


/*
virtual QPlaceIdReply *removePlace(const QString &placeId)
*/
HB_FUNC_STATIC( QPLACEMANAGERENGINE_REMOVEPLACE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * obj = (QPlaceManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceIdReply * ptr = obj->removePlace ( PQSTRING(1) );
    _qt5xhb_createReturnClass ( ptr, "QPLACEIDREPLY" );
  }
#endif
}


/*
virtual QPlaceIdReply *saveCategory(const QPlaceCategory &category, const QString &parentId)
*/
HB_FUNC_STATIC( QPLACEMANAGERENGINE_SAVECATEGORY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * obj = (QPlaceManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceIdReply * ptr = obj->saveCategory ( *PQPLACECATEGORY(1), PQSTRING(2) );
    _qt5xhb_createReturnClass ( ptr, "QPLACEIDREPLY" );
  }
#endif
}


/*
virtual QPlaceIdReply *removeCategory(const QString &categoryId)
*/
HB_FUNC_STATIC( QPLACEMANAGERENGINE_REMOVECATEGORY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * obj = (QPlaceManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceIdReply * ptr = obj->removeCategory ( PQSTRING(1) );
    _qt5xhb_createReturnClass ( ptr, "QPLACEIDREPLY" );
  }
#endif
}


/*
virtual QPlaceReply *initializeCategories()
*/
HB_FUNC_STATIC( QPLACEMANAGERENGINE_INITIALIZECATEGORIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * obj = (QPlaceManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceReply * ptr = obj->initializeCategories ();
    _qt5xhb_createReturnClass ( ptr, "QPLACEREPLY" );
  }
#endif
}


/*
virtual QString parentCategoryId(const QString &categoryId) const
*/
HB_FUNC_STATIC( QPLACEMANAGERENGINE_PARENTCATEGORYID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * obj = (QPlaceManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->parentCategoryId ( PQSTRING(1) ) );
  }
#endif
}


/*
virtual QStringList childCategoryIds(const QString &categoryId) const
*/
HB_FUNC_STATIC( QPLACEMANAGERENGINE_CHILDCATEGORYIDS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * obj = (QPlaceManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRINGLIST( obj->childCategoryIds ( PQSTRING(1) ) );
  }
#endif
}


/*
virtual QPlaceCategory category(const QString &categoryId) const
*/
HB_FUNC_STATIC( QPLACEMANAGERENGINE_CATEGORY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * obj = (QPlaceManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceCategory * ptr = new QPlaceCategory( obj->category ( PQSTRING(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QPLACECATEGORY", true );
  }
#endif
}


/*
virtual QList<QPlaceCategory> childCategories(const QString &parentId) const
*/
HB_FUNC_STATIC( QPLACEMANAGERENGINE_CHILDCATEGORIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * obj = (QPlaceManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QPlaceCategory> list = obj->childCategories ( PQSTRING(1) );
    PHB_DYNS pDynSym;
    pDynSym = hb_dynsymFindName( "QPLACECATEGORY" );
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
virtual QList<QLocale> locales() const
*/
HB_FUNC_STATIC( QPLACEMANAGERENGINE_LOCALES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * obj = (QPlaceManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QLocale> list = obj->locales ();
    PHB_DYNS pDynSym;
    pDynSym = hb_dynsymFindName( "QLOCALE" );
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
        hb_itemPutPtr( pItem, (QLocale *) new QLocale ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
#endif
}


/*
virtual void setLocales(const QList<QLocale> &locales)
*/
HB_FUNC_STATIC( QPLACEMANAGERENGINE_SETLOCALES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * obj = (QPlaceManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QLocale> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->setLocales ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
virtual QUrl constructIconUrl(const QPlaceIcon &icon, const QSize &size) const
*/
HB_FUNC_STATIC( QPLACEMANAGERENGINE_CONSTRUCTICONURL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * obj = (QPlaceManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->constructIconUrl ( *PQPLACEICON(1), *PQSIZE(2) ) );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
#endif
}


/*
virtual QPlace compatiblePlace(const QPlace &original) const
*/
HB_FUNC_STATIC( QPLACEMANAGERENGINE_COMPATIBLEPLACE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * obj = (QPlaceManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlace * ptr = new QPlace( obj->compatiblePlace ( *PQPLACE(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QPLACE", true );
  }
#endif
}


/*
virtual QPlaceMatchReply *matchingPlaces(const QPlaceMatchRequest &request)
*/
HB_FUNC_STATIC( QPLACEMANAGERENGINE_MATCHINGPLACES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * obj = (QPlaceManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceMatchReply * ptr = obj->matchingPlaces ( *PQPLACEMATCHREQUEST(1) );
    _qt5xhb_createReturnClass ( ptr, "QPLACEMATCHREPLY" );
  }
#endif
}




#pragma ENDDUMP

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPLACECATEGORY
REQUEST QGEOLOCATION
REQUEST QPLACERATINGS
REQUEST QPLACESUPPLIER
REQUEST QPLACEICON
REQUEST QURL
REQUEST QPLACEATTRIBUTE
REQUEST QPLACECONTACTDETAIL
#endif

CLASS QPlace

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD categories
   METHOD setCategories
   METHOD setCategory
   METHOD location
   METHOD setLocation
   METHOD ratings
   METHOD setRatings
   METHOD supplier
   METHOD setSupplier
   METHOD attribution
   METHOD setAttribution
   METHOD icon
   METHOD setIcon
   METHOD totalContentCount
   METHOD setTotalContentCount
   METHOD name
   METHOD setName
   METHOD placeId
   METHOD setPlaceId
   METHOD primaryPhone
   METHOD primaryFax
   METHOD primaryEmail
   METHOD primaryWebsite
   METHOD detailsFetched
   METHOD setDetailsFetched
   METHOD extendedAttributeTypes
   METHOD extendedAttribute
   METHOD setExtendedAttribute
   METHOD removeExtendedAttribute
   METHOD contactTypes
   METHOD contactDetails
   METHOD setContactDetails
   METHOD appendContactDetail
   METHOD removeContactDetails
   METHOD visibility
   METHOD setVisibility
   METHOD isEmpty

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPlace
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QPlace>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QPlace>
#endif
#endif

#include <QPlaceSupplier>
#include <QPlaceIcon>

/*
QPlace()
*/
void QPlace_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlace * o = new QPlace ();
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QPlace(const QPlace &other)
*/
void QPlace_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlace * par1 = (QPlace *) _qt5xhb_itemGetPtr(1);
  QPlace * o = new QPlace ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}


//[1]QPlace()
//[2]QPlace(const QPlace &other)

HB_FUNC_STATIC( QPLACE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlace_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACE(1) )
  {
    QPlace_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPLACE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlace * obj = (QPlace *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QList<QPlaceCategory> categories() const
*/
HB_FUNC_STATIC( QPLACE_CATEGORIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlace * obj = (QPlace *) _qt5xhb_itemGetPtrStackSelfItem();
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
void setCategories(const QList<QPlaceCategory> &categories)
*/
HB_FUNC_STATIC( QPLACE_SETCATEGORIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlace * obj = (QPlace *) _qt5xhb_itemGetPtrStackSelfItem();
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
void setCategory(const QPlaceCategory &category)
*/
HB_FUNC_STATIC( QPLACE_SETCATEGORY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlace * obj = (QPlace *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceCategory * par1 = (QPlaceCategory *) _qt5xhb_itemGetPtr(1);
    obj->setCategory ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QGeoLocation location() const
*/
HB_FUNC_STATIC( QPLACE_LOCATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlace * obj = (QPlace *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoLocation * ptr = new QGeoLocation( obj->location () );
    _qt5xhb_createReturnClass ( ptr, "QGEOLOCATION", true );
  }
#endif
}

/*
void setLocation(const QGeoLocation &location)
*/
HB_FUNC_STATIC( QPLACE_SETLOCATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlace * obj = (QPlace *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoLocation * par1 = (QGeoLocation *) _qt5xhb_itemGetPtr(1);
    obj->setLocation ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QPlaceRatings ratings() const
*/
HB_FUNC_STATIC( QPLACE_RATINGS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlace * obj = (QPlace *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceRatings * ptr = new QPlaceRatings( obj->ratings () );
    _qt5xhb_createReturnClass ( ptr, "QPLACERATINGS", true );
  }
#endif
}

/*
void setRatings(const QPlaceRatings &ratings)
*/
HB_FUNC_STATIC( QPLACE_SETRATINGS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlace * obj = (QPlace *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceRatings * par1 = (QPlaceRatings *) _qt5xhb_itemGetPtr(1);
    obj->setRatings ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QPlaceSupplier supplier() const
*/
HB_FUNC_STATIC( QPLACE_SUPPLIER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlace * obj = (QPlace *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceSupplier * ptr = new QPlaceSupplier( obj->supplier () );
    _qt5xhb_createReturnClass ( ptr, "QPLACESUPPLIER", true );
  }
#endif
}

/*
void setSupplier(const QPlaceSupplier &supplier)
*/
HB_FUNC_STATIC( QPLACE_SETSUPPLIER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlace * obj = (QPlace *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceSupplier * par1 = (QPlaceSupplier *) _qt5xhb_itemGetPtr(1);
    obj->setSupplier ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString attribution() const
*/
HB_FUNC_STATIC( QPLACE_ATTRIBUTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlace * obj = (QPlace *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->attribution () ) );
  }
#endif
}

/*
void setAttribution(const QString &attribution)
*/
HB_FUNC_STATIC( QPLACE_SETATTRIBUTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlace * obj = (QPlace *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAttribution ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QPlaceIcon icon() const
*/
HB_FUNC_STATIC( QPLACE_ICON )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlace * obj = (QPlace *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceIcon * ptr = new QPlaceIcon( obj->icon () );
    _qt5xhb_createReturnClass ( ptr, "QPLACEICON", true );
  }
#endif
}

/*
void setIcon(const QPlaceIcon &icon)
*/
HB_FUNC_STATIC( QPLACE_SETICON )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlace * obj = (QPlace *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceIcon * par1 = (QPlaceIcon *) _qt5xhb_itemGetPtr(1);
    obj->setIcon ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}




/*
int totalContentCount(QPlaceContent::Type type) const
*/
HB_FUNC_STATIC( QPLACE_TOTALCONTENTCOUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlace * obj = (QPlace *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->totalContentCount ( (QPlaceContent::Type) hb_parni(1) ) );
  }
#endif
}

/*
void setTotalContentCount(QPlaceContent::Type type, int total)
*/
HB_FUNC_STATIC( QPLACE_SETTOTALCONTENTCOUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlace * obj = (QPlace *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTotalContentCount ( (QPlaceContent::Type) hb_parni(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString name() const
*/
HB_FUNC_STATIC( QPLACE_NAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlace * obj = (QPlace *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->name () ) );
  }
#endif
}

/*
void setName(const QString &name)
*/
HB_FUNC_STATIC( QPLACE_SETNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlace * obj = (QPlace *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setName ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString placeId() const
*/
HB_FUNC_STATIC( QPLACE_PLACEID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlace * obj = (QPlace *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->placeId () ) );
  }
#endif
}

/*
void setPlaceId(const QString &identifier)
*/
HB_FUNC_STATIC( QPLACE_SETPLACEID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlace * obj = (QPlace *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPlaceId ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString primaryPhone() const
*/
HB_FUNC_STATIC( QPLACE_PRIMARYPHONE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlace * obj = (QPlace *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->primaryPhone () ) );
  }
#endif
}


/*
QString primaryFax() const
*/
HB_FUNC_STATIC( QPLACE_PRIMARYFAX )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlace * obj = (QPlace *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->primaryFax () ) );
  }
#endif
}


/*
QString primaryEmail() const
*/
HB_FUNC_STATIC( QPLACE_PRIMARYEMAIL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlace * obj = (QPlace *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->primaryEmail () ) );
  }
#endif
}


/*
QUrl primaryWebsite() const
*/
HB_FUNC_STATIC( QPLACE_PRIMARYWEBSITE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlace * obj = (QPlace *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->primaryWebsite () );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
#endif
}


/*
bool detailsFetched() const
*/
HB_FUNC_STATIC( QPLACE_DETAILSFETCHED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlace * obj = (QPlace *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->detailsFetched () );
  }
#endif
}

/*
void setDetailsFetched(bool fetched)
*/
HB_FUNC_STATIC( QPLACE_SETDETAILSFETCHED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlace * obj = (QPlace *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDetailsFetched ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QStringList extendedAttributeTypes() const
*/
HB_FUNC_STATIC( QPLACE_EXTENDEDATTRIBUTETYPES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlace * obj = (QPlace *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->extendedAttributeTypes ();
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
#endif
}


/*
QPlaceAttribute extendedAttribute(const QString &attributeType) const
*/
HB_FUNC_STATIC( QPLACE_EXTENDEDATTRIBUTE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlace * obj = (QPlace *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceAttribute * ptr = new QPlaceAttribute( obj->extendedAttribute ( PQSTRING(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QPLACEATTRIBUTE", true );
  }
#endif
}

/*
void setExtendedAttribute(const QString &attributeType, const QPlaceAttribute &attribute)
*/
HB_FUNC_STATIC( QPLACE_SETEXTENDEDATTRIBUTE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlace * obj = (QPlace *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceAttribute * par2 = (QPlaceAttribute *) _qt5xhb_itemGetPtr(2);
    obj->setExtendedAttribute ( PQSTRING(1), *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void removeExtendedAttribute(const QString &attributeType)
*/
HB_FUNC_STATIC( QPLACE_REMOVEEXTENDEDATTRIBUTE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlace * obj = (QPlace *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->removeExtendedAttribute ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QStringList contactTypes() const
*/
HB_FUNC_STATIC( QPLACE_CONTACTTYPES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlace * obj = (QPlace *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->contactTypes ();
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
#endif
}


/*
QList<QPlaceContactDetail> contactDetails(const QString &contactType) const
*/
HB_FUNC_STATIC( QPLACE_CONTACTDETAILS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlace * obj = (QPlace *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QPlaceContactDetail> list = obj->contactDetails ( PQSTRING(1) );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QPLACECONTACTDETAIL" );
    #else
    pDynSym = hb_dynsymFindName( "QPLACECONTACTDETAIL" );
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
        hb_itemPutPtr( pItem, (QPlaceContactDetail *) new QPlaceContactDetail ( list[i] ) );
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
void setContactDetails(const QString &contactType, QList<QPlaceContactDetail> details)
*/
HB_FUNC_STATIC( QPLACE_SETCONTACTDETAILS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlace * obj = (QPlace *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QPlaceContactDetail> par2;
    PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
    int i2;
    int nLen2 = hb_arrayLen(aList2);
    for (i2=0;i2<nLen2;i2++)
    {
      par2 << *(QPlaceContactDetail *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );
    }
    obj->setContactDetails ( PQSTRING(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void appendContactDetail(const QString &contactType, const QPlaceContactDetail &detail)
*/
HB_FUNC_STATIC( QPLACE_APPENDCONTACTDETAIL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlace * obj = (QPlace *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceContactDetail * par2 = (QPlaceContactDetail *) _qt5xhb_itemGetPtr(2);
    obj->appendContactDetail ( PQSTRING(1), *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void removeContactDetails(const QString &contactType)
*/
HB_FUNC_STATIC( QPLACE_REMOVECONTACTDETAILS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlace * obj = (QPlace *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->removeContactDetails ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QLocation::Visibility visibility() const
*/
HB_FUNC_STATIC( QPLACE_VISIBILITY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlace * obj = (QPlace *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->visibility () );
  }
#endif
}

/*
void setVisibility(QLocation::Visibility visibility)
*/
HB_FUNC_STATIC( QPLACE_SETVISIBILITY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlace * obj = (QPlace *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setVisibility ( (QLocation::Visibility) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QPLACE_ISEMPTY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlace * obj = (QPlace *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isEmpty () );
  }
#endif
}



HB_FUNC_STATIC( QPLACE_NEWFROM )
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

HB_FUNC_STATIC( QPLACE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QPLACE_NEWFROM );
}

HB_FUNC_STATIC( QPLACE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QPLACE_NEWFROM );
}

HB_FUNC_STATIC( QPLACE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QPLACE_SETSELFDESTRUCTION )
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

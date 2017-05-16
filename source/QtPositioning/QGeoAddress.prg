/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QGeoAddress

   DATA pointer
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD text
   METHOD setText
   METHOD country
   METHOD setCountry
   METHOD countryCode
   METHOD setCountryCode
   METHOD state
   METHOD setState
   METHOD county
   METHOD setCounty
   METHOD city
   METHOD setCity
   METHOD district
   METHOD setDistrict
   METHOD postalCode
   METHOD setPostalCode
   METHOD street
   METHOD setStreet
   METHOD isEmpty
   METHOD clear
   METHOD isTextGenerated

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGeoAddress
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QGeoAddress>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QGeoAddress>
#endif
#endif

#include <QString>

/*
QGeoAddress()
*/
HB_FUNC_STATIC( QGEOADDRESS_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAddress * o = new QGeoAddress ();
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QGeoAddress(const QGeoAddress &other)
*/
HB_FUNC_STATIC( QGEOADDRESS_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAddress * par1 = (QGeoAddress *) _qt5xhb_itemGetPtr(1);
  QGeoAddress * o = new QGeoAddress ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}


//[1]QGeoAddress()
//[2]QGeoAddress(const QGeoAddress &other)

HB_FUNC_STATIC( QGEOADDRESS_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QGEOADDRESS_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQGEOADDRESS(1) )
  {
    HB_FUNC_EXEC( QGEOADDRESS_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGEOADDRESS_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAddress * obj = (QGeoAddress *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString text() const
*/
HB_FUNC_STATIC( QGEOADDRESS_TEXT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAddress * obj = (QGeoAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->text () ) );
  }
#endif
}


/*
void setText(const QString &text)
*/
HB_FUNC_STATIC( QGEOADDRESS_SETTEXT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAddress * obj = (QGeoAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setText ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString country() const
*/
HB_FUNC_STATIC( QGEOADDRESS_COUNTRY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAddress * obj = (QGeoAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->country () ) );
  }
#endif
}


/*
void setCountry(const QString &country)
*/
HB_FUNC_STATIC( QGEOADDRESS_SETCOUNTRY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAddress * obj = (QGeoAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCountry ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString countryCode() const
*/
HB_FUNC_STATIC( QGEOADDRESS_COUNTRYCODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAddress * obj = (QGeoAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->countryCode () ) );
  }
#endif
}


/*
void setCountryCode(const QString &countryCode)
*/
HB_FUNC_STATIC( QGEOADDRESS_SETCOUNTRYCODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAddress * obj = (QGeoAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCountryCode ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString state() const
*/
HB_FUNC_STATIC( QGEOADDRESS_STATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAddress * obj = (QGeoAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->state () ) );
  }
#endif
}


/*
void setState(const QString &state)
*/
HB_FUNC_STATIC( QGEOADDRESS_SETSTATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAddress * obj = (QGeoAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setState ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString county() const
*/
HB_FUNC_STATIC( QGEOADDRESS_COUNTY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAddress * obj = (QGeoAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->county () ) );
  }
#endif
}


/*
void setCounty(const QString &county)
*/
HB_FUNC_STATIC( QGEOADDRESS_SETCOUNTY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAddress * obj = (QGeoAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCounty ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString city() const
*/
HB_FUNC_STATIC( QGEOADDRESS_CITY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAddress * obj = (QGeoAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->city () ) );
  }
#endif
}


/*
void setCity(const QString &city)
*/
HB_FUNC_STATIC( QGEOADDRESS_SETCITY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAddress * obj = (QGeoAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCity ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString district() const
*/
HB_FUNC_STATIC( QGEOADDRESS_DISTRICT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAddress * obj = (QGeoAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->district () ) );
  }
#endif
}


/*
void setDistrict(const QString &district)
*/
HB_FUNC_STATIC( QGEOADDRESS_SETDISTRICT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAddress * obj = (QGeoAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDistrict ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString postalCode() const
*/
HB_FUNC_STATIC( QGEOADDRESS_POSTALCODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAddress * obj = (QGeoAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->postalCode () ) );
  }
#endif
}


/*
void setPostalCode(const QString &postalCode)
*/
HB_FUNC_STATIC( QGEOADDRESS_SETPOSTALCODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAddress * obj = (QGeoAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPostalCode ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString street() const
*/
HB_FUNC_STATIC( QGEOADDRESS_STREET )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAddress * obj = (QGeoAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->street () ) );
  }
#endif
}


/*
void setStreet(const QString &street)
*/
HB_FUNC_STATIC( QGEOADDRESS_SETSTREET )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAddress * obj = (QGeoAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setStreet ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QGEOADDRESS_ISEMPTY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAddress * obj = (QGeoAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isEmpty () );
  }
#endif
}


/*
void clear()
*/
HB_FUNC_STATIC( QGEOADDRESS_CLEAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAddress * obj = (QGeoAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool isTextGenerated() const
*/
HB_FUNC_STATIC( QGEOADDRESS_ISTEXTGENERATED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAddress * obj = (QGeoAddress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isTextGenerated () );
  }
#endif
}



HB_FUNC_STATIC( QGEOADDRESS_NEWFROM )
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

HB_FUNC_STATIC( QGEOADDRESS_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QGEOADDRESS_NEWFROM );
}

HB_FUNC_STATIC( QGEOADDRESS_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QGEOADDRESS_NEWFROM );
}

HB_FUNC_STATIC( QGEOADDRESS_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QGEOADDRESS_SETSELFDESTRUCTION )
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

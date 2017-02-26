/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QOBJECT
REQUEST QBYTEARRAY
REQUEST QSSLCONFIGURATION
REQUEST QURL
#endif

CLASS QNetworkRequest

   DATA pointer
   DATA class_id INIT Class_Id_QNetworkRequest
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD attribute
   METHOD hasRawHeader
   METHOD header
   METHOD originatingObject
   METHOD priority
   METHOD rawHeader
   METHOD rawHeaderList
   METHOD setAttribute
   METHOD setHeader
   METHOD setOriginatingObject
   METHOD setPriority
   METHOD setRawHeader
   METHOD setSslConfiguration
   METHOD setUrl
   METHOD sslConfiguration
   METHOD url
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QNetworkRequest
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QNetworkRequest>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QNetworkRequest>
#endif
#endif

#include <QSslConfiguration>

/*
QNetworkRequest ( const QUrl & url = QUrl() )
*/
HB_FUNC_STATIC( QNETWORKREQUEST_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QUrl par1 = ISNIL(1)? QUrl() : *(QUrl *) _qtxhb_itemGetPtr(1);
  QNetworkRequest * o = new QNetworkRequest ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QNetworkRequest *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QNetworkRequest ( const QNetworkRequest & other )
*/
HB_FUNC_STATIC( QNETWORKREQUEST_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QNetworkRequest * par1 = (QNetworkRequest *) _qtxhb_itemGetPtr(1);
  QNetworkRequest * o = new QNetworkRequest ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QNetworkRequest *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


//[1]QNetworkRequest ( const QUrl & url = QUrl() )
//[2]QNetworkRequest ( const QNetworkRequest & other )

HB_FUNC_STATIC( QNETWORKREQUEST_NEW )
{
  if( ISBETWEEN(0,1) && (ISQURL(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QNETWORKREQUEST_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQNETWORKREQUEST(1) )
  {
    HB_FUNC_EXEC( QNETWORKREQUEST_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QNETWORKREQUEST_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QNetworkRequest * obj = (QNetworkRequest *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QVariant attribute ( Attribute code, const QVariant & defaultValue = QVariant() ) const
*/
HB_FUNC_STATIC( QNETWORKREQUEST_ATTRIBUTE )
{
  QNetworkRequest * obj = (QNetworkRequest *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant par2 = ISNIL(2)? QVariant() : *(QVariant *) _qtxhb_itemGetPtr(2);
    QVariant * ptr = new QVariant( obj->attribute (  (QNetworkRequest::Attribute) par1, par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
bool hasRawHeader ( const QByteArray & headerName ) const
*/
HB_FUNC_STATIC( QNETWORKREQUEST_HASRAWHEADER )
{
  QNetworkRequest * obj = (QNetworkRequest *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->hasRawHeader ( *par1 ) );
  }
}


/*
QVariant header ( KnownHeaders header ) const
*/
HB_FUNC_STATIC( QNETWORKREQUEST_HEADER )
{
  QNetworkRequest * obj = (QNetworkRequest *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * ptr = new QVariant( obj->header (  (QNetworkRequest::KnownHeaders) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
QObject * originatingObject () const
*/
HB_FUNC_STATIC( QNETWORKREQUEST_ORIGINATINGOBJECT )
{
  QNetworkRequest * obj = (QNetworkRequest *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * ptr = obj->originatingObject (  );
    _qt4xhb_createReturnClass ( ptr, "QOBJECT" );
  }
}


/*
Priority priority () const
*/
HB_FUNC_STATIC( QNETWORKREQUEST_PRIORITY )
{
  QNetworkRequest * obj = (QNetworkRequest *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->priority (  ) );
  }
}


/*
QByteArray rawHeader ( const QByteArray & headerName ) const
*/
HB_FUNC_STATIC( QNETWORKREQUEST_RAWHEADER )
{
  QNetworkRequest * obj = (QNetworkRequest *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
    QByteArray * ptr = new QByteArray( obj->rawHeader ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QList<QByteArray> rawHeaderList () const
*/
HB_FUNC_STATIC( QNETWORKREQUEST_RAWHEADERLIST )
{
  QNetworkRequest * obj = (QNetworkRequest *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QByteArray> list = obj->rawHeaderList (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QBYTEARRAY" );
    #else
    pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
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
        hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
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
void setAttribute ( Attribute code, const QVariant & value )
*/
HB_FUNC_STATIC( QNETWORKREQUEST_SETATTRIBUTE )
{
  QNetworkRequest * obj = (QNetworkRequest *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * par2 = (QVariant *) _qtxhb_itemGetPtr(2);
    obj->setAttribute (  (QNetworkRequest::Attribute) par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHeader ( KnownHeaders header, const QVariant & value )
*/
HB_FUNC_STATIC( QNETWORKREQUEST_SETHEADER )
{
  QNetworkRequest * obj = (QNetworkRequest *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * par2 = (QVariant *) _qtxhb_itemGetPtr(2);
    obj->setHeader (  (QNetworkRequest::KnownHeaders) par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOriginatingObject ( QObject * object )
*/
HB_FUNC_STATIC( QNETWORKREQUEST_SETORIGINATINGOBJECT )
{
  QNetworkRequest * obj = (QNetworkRequest *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
    obj->setOriginatingObject ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPriority ( Priority priority )
*/
HB_FUNC_STATIC( QNETWORKREQUEST_SETPRIORITY )
{
  QNetworkRequest * obj = (QNetworkRequest *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPriority (  (QNetworkRequest::Priority) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRawHeader ( const QByteArray & headerName, const QByteArray & headerValue )
*/
HB_FUNC_STATIC( QNETWORKREQUEST_SETRAWHEADER )
{
  QNetworkRequest * obj = (QNetworkRequest *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
    QByteArray * par2 = (QByteArray *) _qtxhb_itemGetPtr(2);
    obj->setRawHeader ( *par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSslConfiguration ( const QSslConfiguration & config )
*/
HB_FUNC_STATIC( QNETWORKREQUEST_SETSSLCONFIGURATION )
{
  QNetworkRequest * obj = (QNetworkRequest *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSslConfiguration * par1 = (QSslConfiguration *) _qtxhb_itemGetPtr(1);
    obj->setSslConfiguration ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUrl ( const QUrl & url )
*/
HB_FUNC_STATIC( QNETWORKREQUEST_SETURL )
{
  QNetworkRequest * obj = (QNetworkRequest *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * par1 = (QUrl *) _qtxhb_itemGetPtr(1);
    obj->setUrl ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSslConfiguration sslConfiguration () const
*/
HB_FUNC_STATIC( QNETWORKREQUEST_SSLCONFIGURATION )
{
  QNetworkRequest * obj = (QNetworkRequest *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSslConfiguration * ptr = new QSslConfiguration( obj->sslConfiguration (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSSLCONFIGURATION", true );
  }
}


/*
QUrl url () const
*/
HB_FUNC_STATIC( QNETWORKREQUEST_URL )
{
  QNetworkRequest * obj = (QNetworkRequest *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->url (  ) );
    _qt4xhb_createReturnClass ( ptr, "QURL", true );
  }
}



HB_FUNC_STATIC( QNETWORKREQUEST_NEWFROM )
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

HB_FUNC_STATIC( QNETWORKREQUEST_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QNETWORKREQUEST_NEWFROM );
}

HB_FUNC_STATIC( QNETWORKREQUEST_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QNETWORKREQUEST_NEWFROM );
}

HB_FUNC_STATIC( QNETWORKREQUEST_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QNETWORKREQUEST_SETSELFDESTRUCTION )
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
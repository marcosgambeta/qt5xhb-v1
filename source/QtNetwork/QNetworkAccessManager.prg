/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QNETWORKCONFIGURATION
REQUEST QABSTRACTNETWORKCACHE
REQUEST QNETWORKCOOKIEJAR
REQUEST QNETWORKREPLY
REQUEST QNETWORKPROXY
REQUEST QNETWORKPROXYFACTORY
#endif

CLASS QNetworkAccessManager INHERIT QObject

   DATA class_id INIT Class_Id_QNetworkAccessManager
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD activeConfiguration
   METHOD cache
   METHOD configuration
   METHOD cookieJar
   METHOD deleteResource
   METHOD get
   METHOD head
   METHOD networkAccessible
   METHOD post1
   METHOD post2
   METHOD post
   METHOD proxy
   METHOD proxyFactory
   METHOD put1
   METHOD put2
   METHOD put
   METHOD sendCustomRequest
   METHOD setCache
   METHOD setConfiguration
   METHOD setCookieJar
   METHOD setNetworkAccessible
   METHOD setProxy
   METHOD setProxyFactory
   METHOD onAuthenticationRequired
   METHOD onFinished
   METHOD onNetworkAccessibleChanged
   METHOD onProxyAuthenticationRequired
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QNetworkAccessManager
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QNetworkAccessManager>
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
#include <QNetworkAccessManager>
#endif
#endif

#include <QNetworkConfiguration>
#include <QNetworkProxy>
#include <QSslError>
#include <QList>

/*
QNetworkAccessManager ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QNetworkAccessManager * o = new QNetworkAccessManager ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QNetworkAccessManager *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QNETWORKACCESSMANAGER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QNetworkAccessManager * obj = (QNetworkAccessManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QNetworkConfiguration activeConfiguration () const
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_ACTIVECONFIGURATION )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkConfiguration * ptr = new QNetworkConfiguration( obj->activeConfiguration (  ) );
    _qt5xhb_createReturnClass ( ptr, "QNETWORKCONFIGURATION", true );
  }
}


/*
QAbstractNetworkCache * cache () const
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_CACHE )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractNetworkCache * ptr = obj->cache (  );
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTNETWORKCACHE" );
  }
}


/*
QNetworkConfiguration configuration () const
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_CONFIGURATION )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkConfiguration * ptr = new QNetworkConfiguration( obj->configuration (  ) );
    _qt5xhb_createReturnClass ( ptr, "QNETWORKCONFIGURATION", true );
  }
}


/*
QNetworkCookieJar * cookieJar () const
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_COOKIEJAR )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkCookieJar * ptr = obj->cookieJar (  );
    _qt5xhb_createReturnClass ( ptr, "QNETWORKCOOKIEJAR" );
  }
}


/*
QNetworkReply * deleteResource ( const QNetworkRequest & request )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_DELETERESOURCE )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkRequest * par1 = (QNetworkRequest *) _qt5xhb_itemGetPtr(1);
    QNetworkReply * ptr = obj->deleteResource ( *par1 );
    _qt5xhb_createReturnClass ( ptr, "QNETWORKREPLY" );
  }
}


/*
QNetworkReply * get ( const QNetworkRequest & request )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_GET )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkRequest * par1 = (QNetworkRequest *) _qt5xhb_itemGetPtr(1);
    QNetworkReply * ptr = obj->get ( *par1 );
    _qt5xhb_createReturnClass ( ptr, "QNETWORKREPLY" );
  }
}


/*
QNetworkReply * head ( const QNetworkRequest & request )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_HEAD )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkRequest * par1 = (QNetworkRequest *) _qt5xhb_itemGetPtr(1);
    QNetworkReply * ptr = obj->head ( *par1 );
    _qt5xhb_createReturnClass ( ptr, "QNETWORKREPLY" );
  }
}


/*
NetworkAccessibility networkAccessible () const
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_NETWORKACCESSIBLE )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->networkAccessible (  ) );
  }
}


/*
QNetworkReply * post ( const QNetworkRequest & request, QIODevice * data )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_POST1 )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkRequest * par1 = (QNetworkRequest *) _qt5xhb_itemGetPtr(1);
    QIODevice * par2 = (QIODevice *) _qt5xhb_itemGetPtr(2);
    QNetworkReply * ptr = obj->post ( *par1, par2 );
    _qt5xhb_createReturnClass ( ptr, "QNETWORKREPLY" );
  }
}


/*
QNetworkReply * post ( const QNetworkRequest & request, const QByteArray & data )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_POST2 )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkRequest * par1 = (QNetworkRequest *) _qt5xhb_itemGetPtr(1);
    QByteArray * par2 = (QByteArray *) _qt5xhb_itemGetPtr(2);
    QNetworkReply * ptr = obj->post ( *par1, *par2 );
    _qt5xhb_createReturnClass ( ptr, "QNETWORKREPLY" );
  }
}


//[1]QNetworkReply * post ( const QNetworkRequest & request, QIODevice * data )
//[2]QNetworkReply * post ( const QNetworkRequest & request, const QByteArray & data )

HB_FUNC_STATIC( QNETWORKACCESSMANAGER_POST )
{
  if( ISNUMPAR(2) && ISQNETWORKREQUEST(1) && ISQIODEVICE(2) )
  {
    HB_FUNC_EXEC( QNETWORKACCESSMANAGER_POST1 );
  }
  else if( ISNUMPAR(2) && ISQNETWORKREQUEST(1) && ISQBYTEARRAY(2) )
  {
    HB_FUNC_EXEC( QNETWORKACCESSMANAGER_POST2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QNetworkProxy proxy () const
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_PROXY )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkProxy * ptr = new QNetworkProxy( obj->proxy (  ) );
    _qt5xhb_createReturnClass ( ptr, "QNETWORKPROXY", true );
  }
}


/*
QNetworkProxyFactory * proxyFactory () const
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_PROXYFACTORY )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkProxyFactory * ptr = obj->proxyFactory (  );
    _qt5xhb_createReturnClass ( ptr, "QNETWORKPROXYFACTORY" );
  }
}


/*
QNetworkReply * put ( const QNetworkRequest & request, QIODevice * data )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_PUT1 )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkRequest * par1 = (QNetworkRequest *) _qt5xhb_itemGetPtr(1);
    QIODevice * par2 = (QIODevice *) _qt5xhb_itemGetPtr(2);
    QNetworkReply * ptr = obj->put ( *par1, par2 );
    _qt5xhb_createReturnClass ( ptr, "QNETWORKREPLY" );
  }
}


/*
QNetworkReply * put ( const QNetworkRequest & request, const QByteArray & data )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_PUT2 )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkRequest * par1 = (QNetworkRequest *) _qt5xhb_itemGetPtr(1);
    QByteArray * par2 = (QByteArray *) _qt5xhb_itemGetPtr(2);
    QNetworkReply * ptr = obj->put ( *par1, *par2 );
    _qt5xhb_createReturnClass ( ptr, "QNETWORKREPLY" );
  }
}


//[1]QNetworkReply * put ( const QNetworkRequest & request, QIODevice * data )
//[2]QNetworkReply * put ( const QNetworkRequest & request, const QByteArray & data )

HB_FUNC_STATIC( QNETWORKACCESSMANAGER_PUT )
{
  if( ISNUMPAR(2) && ISQNETWORKREQUEST(1) && ISQIODEVICE(2) )
  {
    HB_FUNC_EXEC( QNETWORKACCESSMANAGER_PUT1 );
  }
  else if( ISNUMPAR(2) && ISQNETWORKREQUEST(1) && ISQBYTEARRAY(2) )
  {
    HB_FUNC_EXEC( QNETWORKACCESSMANAGER_PUT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QNetworkReply * sendCustomRequest ( const QNetworkRequest & request, const QByteArray & verb, QIODevice * data = 0 )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_SENDCUSTOMREQUEST )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkRequest * par1 = (QNetworkRequest *) _qt5xhb_itemGetPtr(1);
    QByteArray * par2 = (QByteArray *) _qt5xhb_itemGetPtr(2);
    QIODevice * par3 = (QIODevice *) _qt5xhb_itemGetPtr(3);
    QNetworkReply * ptr = obj->sendCustomRequest ( *par1, *par2, par3 );
    _qt5xhb_createReturnClass ( ptr, "QNETWORKREPLY" );
  }
}


/*
void setCache ( QAbstractNetworkCache * cache )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_SETCACHE )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractNetworkCache * par1 = (QAbstractNetworkCache *) _qt5xhb_itemGetPtr(1);
    obj->setCache ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setConfiguration ( const QNetworkConfiguration & config )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_SETCONFIGURATION )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkConfiguration * par1 = (QNetworkConfiguration *) _qt5xhb_itemGetPtr(1);
    obj->setConfiguration ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCookieJar ( QNetworkCookieJar * cookieJar )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_SETCOOKIEJAR )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkCookieJar * par1 = (QNetworkCookieJar *) _qt5xhb_itemGetPtr(1);
    obj->setCookieJar ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNetworkAccessible ( NetworkAccessibility accessible )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_SETNETWORKACCESSIBLE )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setNetworkAccessible (  (QNetworkAccessManager::NetworkAccessibility) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setProxy ( const QNetworkProxy & proxy )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_SETPROXY )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkProxy * par1 = (QNetworkProxy *) _qt5xhb_itemGetPtr(1);
    obj->setProxy ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setProxyFactory ( QNetworkProxyFactory * factory )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_SETPROXYFACTORY )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkProxyFactory * par1 = (QNetworkProxyFactory *) _qt5xhb_itemGetPtr(1);
    obj->setProxyFactory ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP

/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTNETWORKCACHE
REQUEST QHSTSPOLICY
REQUEST QNETWORKCONFIGURATION
REQUEST QNETWORKCOOKIEJAR
REQUEST QNETWORKPROXY
REQUEST QNETWORKPROXYFACTORY
REQUEST QNETWORKREPLY
#endif

CLASS QNetworkAccessManager INHERIT QObject

   METHOD new
   METHOD delete
   METHOD networkAccessible
   METHOD setNetworkAccessible
   METHOD supportedSchemes
   METHOD clearAccessCache
   METHOD clearConnectionCache
   METHOD proxy
   METHOD setProxy
   METHOD proxyFactory
   METHOD setProxyFactory
   METHOD cache
   METHOD setCache
   METHOD cookieJar
   METHOD setCookieJar
   METHOD setStrictTransportSecurityEnabled
   METHOD isStrictTransportSecurityEnabled
   METHOD enableStrictTransportSecurityStore
   METHOD isStrictTransportSecurityStoreEnabled
   METHOD addStrictTransportSecurityHosts
   METHOD strictTransportSecurityHosts
   METHOD head
   METHOD get
   METHOD post
   METHOD put
   METHOD deleteResource
   METHOD sendCustomRequest
   METHOD setConfiguration
   METHOD configuration
   METHOD activeConfiguration
   METHOD connectToHostEncrypted
   METHOD connectToHost
   METHOD setRedirectPolicy
   METHOD redirectPolicy

   METHOD onProxyAuthenticationRequired
   METHOD onAuthenticationRequired
   METHOD onFinished
   METHOD onEncrypted
   METHOD onSslErrors
   METHOD onPreSharedKeyAuthenticationRequired
   METHOD onNetworkSessionConnected
   METHOD onNetworkAccessibleChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QNetworkAccessManager
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtNetwork/QNetworkAccessManager>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtNetwork/QNetworkAccessManager>
#endif

#include <QtNetwork/QNetworkConfiguration>
#include <QtNetwork/QNetworkProxy>
#include <QtNetwork/QSslError>
#include <QtCore/QList>
#include <QtNetwork/QAbstractNetworkCache>
#include <QtNetwork/QNetworkCookieJar>
#include <QtNetwork/QNetworkReply>
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
#include <QtNetwork/QHstsPolicy>
#endif

/*
QNetworkAccessManager( QObject * parent = nullptr )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||HB_ISNIL(1)) )
  {
    QNetworkAccessManager * obj = new QNetworkAccessManager( OPQOBJECT(1,nullptr) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
~QNetworkAccessManager()
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_DELETE )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QNetworkAccessManager::NetworkAccessibility networkAccessible() const
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_NETWORKACCESSIBLE )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->networkAccessible() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setNetworkAccessible( QNetworkAccessManager::NetworkAccessibility accessible )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_SETNETWORKACCESSIBLE )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setNetworkAccessible( (QNetworkAccessManager::NetworkAccessibility) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QStringList supportedSchemes() const
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_SUPPORTEDSCHEMES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->supportedSchemes() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void clearAccessCache()
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_CLEARACCESSCACHE )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clearAccessCache();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void clearConnectionCache()
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_CLEARCONNECTIONCACHE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clearConnectionCache();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QNetworkProxy proxy() const
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_PROXY )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QNetworkProxy * ptr = new QNetworkProxy( obj->proxy() );
      Qt5xHb::createReturnClass(ptr, "QNETWORKPROXY", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setProxy( const QNetworkProxy & proxy )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_SETPROXY )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQNETWORKPROXY(1) )
    {
#endif
      obj->setProxy( *PQNETWORKPROXY(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QNetworkProxyFactory * proxyFactory() const
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_PROXYFACTORY )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QNetworkProxyFactory * ptr = obj->proxyFactory();
      Qt5xHb::createReturnClass(ptr, "QNETWORKPROXYFACTORY", false);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setProxyFactory( QNetworkProxyFactory * factory )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_SETPROXYFACTORY )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQNETWORKPROXYFACTORY(1) )
    {
#endif
      obj->setProxyFactory( PQNETWORKPROXYFACTORY(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QAbstractNetworkCache * cache() const
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_CACHE )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAbstractNetworkCache * ptr = obj->cache();
      Qt5xHb::createReturnQObjectClass( ptr, "QABSTRACTNETWORKCACHE" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setCache( QAbstractNetworkCache * cache )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_SETCACHE )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACTNETWORKCACHE(1) )
    {
#endif
      obj->setCache( PQABSTRACTNETWORKCACHE(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QNetworkCookieJar * cookieJar() const
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_COOKIEJAR )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QNetworkCookieJar * ptr = obj->cookieJar();
      Qt5xHb::createReturnQObjectClass( ptr, "QNETWORKCOOKIEJAR" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setCookieJar( QNetworkCookieJar * cookieJar )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_SETCOOKIEJAR )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQNETWORKCOOKIEJAR(1) )
    {
#endif
      obj->setCookieJar( PQNETWORKCOOKIEJAR(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setStrictTransportSecurityEnabled( bool enabled )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_SETSTRICTTRANSPORTSECURITYENABLED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setStrictTransportSecurityEnabled( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
bool isStrictTransportSecurityEnabled() const
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_ISSTRICTTRANSPORTSECURITYENABLED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isStrictTransportSecurityEnabled() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void enableStrictTransportSecurityStore( bool enabled, const QString & storeDir = QString() )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_ENABLESTRICTTRANSPORTSECURITYSTORE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && HB_ISLOG(1) && (HB_ISCHAR(2)||HB_ISNIL(2)) )
    {
#endif
      obj->enableStrictTransportSecurityStore( PBOOL(1), OPQSTRING(2,QString()) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
bool isStrictTransportSecurityStoreEnabled() const
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_ISSTRICTTRANSPORTSECURITYSTOREENABLED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isStrictTransportSecurityStoreEnabled() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void addStrictTransportSecurityHosts( const QVector<QHstsPolicy> & knownHosts )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_ADDSTRICTTRANSPORTSECURITYHOSTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISARRAY(1) )
    {
#endif
      QVector<QHstsPolicy> par1;
      PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
      int i1;
      int nLen1 = hb_arrayLen(aList1);
      for (i1=0;i1<nLen1;i1++)
      {
        par1 << *(QHstsPolicy *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
      }
      obj->addStrictTransportSecurityHosts( par1 );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QVector<QHstsPolicy> strictTransportSecurityHosts() const
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_STRICTTRANSPORTSECURITYHOSTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVector<QHstsPolicy> list = obj->strictTransportSecurityHosts();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QHSTSPOLICY" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QHstsPolicy *) new QHstsPolicy( list[i] ) );
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
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QHSTSPOLICY", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QNetworkReply * head( const QNetworkRequest & request )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_HEAD )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQNETWORKREQUEST(1) )
    {
#endif
      QNetworkReply * ptr = obj->head( *PQNETWORKREQUEST(1) );
      Qt5xHb::createReturnQObjectClass( ptr, "QNETWORKREPLY" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QNetworkReply * get( const QNetworkRequest & request )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_GET )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQNETWORKREQUEST(1) )
    {
#endif
      QNetworkReply * ptr = obj->get( *PQNETWORKREQUEST(1) );
      Qt5xHb::createReturnQObjectClass( ptr, "QNETWORKREPLY" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QNETWORKACCESSMANAGER_POST )
{
  if( ISNUMPAR(2) && ISQNETWORKREQUEST(1) && ISQIODEVICE(2) )
  {
    /*
    QNetworkReply * post( const QNetworkRequest & request, QIODevice * data )
    */
    QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      QNetworkReply * ptr = obj->post( *PQNETWORKREQUEST(1), PQIODEVICE(2) );
      Qt5xHb::createReturnQObjectClass( ptr, "QNETWORKREPLY" );
    }
  }
  else if( ISNUMPAR(2) && ISQNETWORKREQUEST(1) && ISQBYTEARRAY(2) )
  {
    /*
    QNetworkReply * post( const QNetworkRequest & request, const QByteArray & data )
    */
    QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      QNetworkReply * ptr = obj->post( *PQNETWORKREQUEST(1), *PQBYTEARRAY(2) );
      Qt5xHb::createReturnQObjectClass( ptr, "QNETWORKREPLY" );
    }
  }
  else if( ISNUMPAR(2) && ISQNETWORKREQUEST(1) && ISQHTTPMULTIPART(2) )
  {
    /*
    QNetworkReply * post( const QNetworkRequest & request, QHttpMultiPart * multiPart )
    */
    QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      QNetworkReply * ptr = obj->post( *PQNETWORKREQUEST(1), PQHTTPMULTIPART(2) );
      Qt5xHb::createReturnQObjectClass( ptr, "QNETWORKREPLY" );
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QNETWORKACCESSMANAGER_PUT )
{
  if( ISNUMPAR(2) && ISQNETWORKREQUEST(1) && ISQIODEVICE(2) )
  {
    /*
    QNetworkReply * put( const QNetworkRequest & request, QIODevice * data )
    */
    QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      QNetworkReply * ptr = obj->put( *PQNETWORKREQUEST(1), PQIODEVICE(2) );
      Qt5xHb::createReturnQObjectClass( ptr, "QNETWORKREPLY" );
    }
  }
  else if( ISNUMPAR(2) && ISQNETWORKREQUEST(1) && ISQBYTEARRAY(2) )
  {
    /*
    QNetworkReply * put( const QNetworkRequest & request, const QByteArray & data )
    */
    QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      QNetworkReply * ptr = obj->put( *PQNETWORKREQUEST(1), *PQBYTEARRAY(2) );
      Qt5xHb::createReturnQObjectClass( ptr, "QNETWORKREPLY" );
    }
  }
  else if( ISNUMPAR(2) && ISQNETWORKREQUEST(1) && ISQHTTPMULTIPART(2) )
  {
    /*
    QNetworkReply * put( const QNetworkRequest & request, QHttpMultiPart * multiPart )
    */
    QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      QNetworkReply * ptr = obj->put( *PQNETWORKREQUEST(1), PQHTTPMULTIPART(2) );
      Qt5xHb::createReturnQObjectClass( ptr, "QNETWORKREPLY" );
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QNetworkReply * deleteResource( const QNetworkRequest & request )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_DELETERESOURCE )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQNETWORKREQUEST(1) )
    {
#endif
      QNetworkReply * ptr = obj->deleteResource( *PQNETWORKREQUEST(1) );
      Qt5xHb::createReturnQObjectClass( ptr, "QNETWORKREPLY" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QNETWORKACCESSMANAGER_SENDCUSTOMREQUEST )
{
  if( ISBETWEEN(2,3) && ISQNETWORKREQUEST(1) && ISQBYTEARRAY(2) && (ISQIODEVICE(3)||HB_ISNIL(3)) )
  {
    /*
    QNetworkReply * sendCustomRequest( const QNetworkRequest & request, const QByteArray & verb, QIODevice * data = nullptr )
    */
    QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      QNetworkReply * ptr = obj->sendCustomRequest( *PQNETWORKREQUEST(1), *PQBYTEARRAY(2), OPQIODEVICE(3,nullptr) );
      Qt5xHb::createReturnQObjectClass( ptr, "QNETWORKREPLY" );
    }
  }
  else if( ISBETWEEN(2,3) && ISQNETWORKREQUEST(1) && ISQBYTEARRAY(2) && (ISQBYTEARRAY(3)||HB_ISNIL(3)) )
  {
    /*
    QNetworkReply * sendCustomRequest( const QNetworkRequest & request, const QByteArray & verb, const QByteArray & data )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
    QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      QNetworkReply * ptr = obj->sendCustomRequest( *PQNETWORKREQUEST(1), *PQBYTEARRAY(2), *PQBYTEARRAY(3) );
      Qt5xHb::createReturnQObjectClass( ptr, "QNETWORKREPLY" );
    }
#endif
  }
  else if( ISBETWEEN(2,3) && ISQNETWORKREQUEST(1) && ISQBYTEARRAY(2) && (ISQHTTPMULTIPART(3)||HB_ISNIL(3)) )
  {
    /*
    QNetworkReply * sendCustomRequest( const QNetworkRequest & request, const QByteArray & verb, QHttpMultiPart * multiPart )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
    QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      QNetworkReply * ptr = obj->sendCustomRequest( *PQNETWORKREQUEST(1), *PQBYTEARRAY(2), PQHTTPMULTIPART(3) );
      Qt5xHb::createReturnQObjectClass( ptr, "QNETWORKREPLY" );
    }
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void setConfiguration( const QNetworkConfiguration & config )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_SETCONFIGURATION )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQNETWORKCONFIGURATION(1) )
    {
#endif
      obj->setConfiguration( *PQNETWORKCONFIGURATION(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QNetworkConfiguration configuration() const
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_CONFIGURATION )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QNetworkConfiguration * ptr = new QNetworkConfiguration( obj->configuration() );
      Qt5xHb::createReturnClass(ptr, "QNETWORKCONFIGURATION", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QNetworkConfiguration activeConfiguration() const
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_ACTIVECONFIGURATION )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QNetworkConfiguration * ptr = new QNetworkConfiguration( obj->activeConfiguration() );
      Qt5xHb::createReturnClass(ptr, "QNETWORKCONFIGURATION", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void connectToHostEncrypted( const QString & hostName, quint16 port = 443, const QSslConfiguration & sslConfiguration = QSslConfiguration::defaultConfiguration() )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_CONNECTTOHOSTENCRYPTED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,3) && HB_ISCHAR(1) && (HB_ISNUM(2)||HB_ISNIL(2)) && (ISQSSLCONFIGURATION(3)||HB_ISNIL(3)) )
    {
#endif
      obj->connectToHostEncrypted( PQSTRING(1), OPQUINT16(2,443), HB_ISNIL(3)? QSslConfiguration::defaultConfiguration() : *(QSslConfiguration *) Qt5xHb::itemGetPtr(3) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
void connectToHost( const QString & hostName, quint16 port = 80 )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_CONNECTTOHOST )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && HB_ISCHAR(1) && (HB_ISNUM(2)||HB_ISNIL(2)) )
    {
#endif
      obj->connectToHost( PQSTRING(1), OPQUINT16(2,80) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
void setRedirectPolicy( QNetworkRequest::RedirectPolicy policy )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_SETREDIRECTPOLICY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setRedirectPolicy( (QNetworkRequest::RedirectPolicy) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QNetworkRequest::RedirectPolicy redirectPolicy() const
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_REDIRECTPOLICY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->redirectPolicy() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

void QNetworkAccessManagerSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QNETWORKACCESSMANAGER_ONPROXYAUTHENTICATIONREQUIRED )
{
  QNetworkAccessManagerSlots_connect_signal( "proxyAuthenticationRequired(QNetworkProxy,QAuthenticator*)", "proxyAuthenticationRequired(QNetworkProxy,QAuthenticator*)" );
}

HB_FUNC_STATIC( QNETWORKACCESSMANAGER_ONAUTHENTICATIONREQUIRED )
{
  QNetworkAccessManagerSlots_connect_signal( "authenticationRequired(QNetworkReply*,QAuthenticator*)", "authenticationRequired(QNetworkReply*,QAuthenticator*)" );
}

HB_FUNC_STATIC( QNETWORKACCESSMANAGER_ONFINISHED )
{
  QNetworkAccessManagerSlots_connect_signal( "finished(QNetworkReply*)", "finished(QNetworkReply*)" );
}

HB_FUNC_STATIC( QNETWORKACCESSMANAGER_ONENCRYPTED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QNetworkAccessManagerSlots_connect_signal( "encrypted(QNetworkReply*)", "encrypted(QNetworkReply*)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QNETWORKACCESSMANAGER_ONSSLERRORS )
{
  QNetworkAccessManagerSlots_connect_signal( "sslErrors(QNetworkReply*,QList<QSslError>)", "sslErrors(QNetworkReply*,QList<QSslError>)" );
}

HB_FUNC_STATIC( QNETWORKACCESSMANAGER_ONPRESHAREDKEYAUTHENTICATIONREQUIRED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  QNetworkAccessManagerSlots_connect_signal( "preSharedKeyAuthenticationRequired(QNetworkReply*,QSslPreSharedKeyAuthenticator*)", "preSharedKeyAuthenticationRequired(QNetworkReply*,QSslPreSharedKeyAuthenticator*)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QNETWORKACCESSMANAGER_ONNETWORKSESSIONCONNECTED )
{
  QNetworkAccessManagerSlots_connect_signal( "networkSessionConnected()", "networkSessionConnected()" );
}

HB_FUNC_STATIC( QNETWORKACCESSMANAGER_ONNETWORKACCESSIBLECHANGED )
{
  QNetworkAccessManagerSlots_connect_signal( "networkAccessibleChanged(QNetworkAccessManager::NetworkAccessibility)", "networkAccessibleChanged(QNetworkAccessManager::NetworkAccessibility)" );
}

#pragma ENDDUMP

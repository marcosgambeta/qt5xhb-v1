/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIODEVICE
REQUEST QNETWORKCACHEMETADATA
#endif

CLASS QNetworkDiskCache INHERIT QAbstractNetworkCache

   METHOD new
   METHOD delete
   METHOD cacheDirectory
   METHOD setCacheDirectory
   METHOD maximumCacheSize
   METHOD setMaximumCacheSize
   METHOD cacheSize
   METHOD metaData
   METHOD updateMetaData
   METHOD data
   METHOD remove
   METHOD prepare
   METHOD insert
   METHOD fileMetaData
   METHOD clear

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QNetworkDiskCache
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtNetwork/QNetworkDiskCache>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtNetwork/QNetworkDiskCache>
#endif

#include <QtCore/QIODevice>

/*
QNetworkDiskCache( QObject * parent = nullptr )
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||HB_ISNIL(1)) )
  {
    QNetworkDiskCache * obj = new QNetworkDiskCache( OPQOBJECT(1,nullptr) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
~QNetworkDiskCache()
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_DELETE )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
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
QString cacheDirectory() const
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_CACHEDIRECTORY )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->cacheDirectory() );
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
void setCacheDirectory( const QString & cacheDir )
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_SETCACHEDIRECTORY )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setCacheDirectory( PQSTRING(1) );
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
qint64 maximumCacheSize() const
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_MAXIMUMCACHESIZE )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->maximumCacheSize() );
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
void setMaximumCacheSize( qint64 size )
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_SETMAXIMUMCACHESIZE )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setMaximumCacheSize( PQINT64(1) );
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
qint64 cacheSize() const Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_CACHESIZE )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->cacheSize() );
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
QNetworkCacheMetaData metaData( const QUrl & url ) Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_METADATA )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQURL(1) )
    {
#endif
      QNetworkCacheMetaData * ptr = new QNetworkCacheMetaData( obj->metaData( *PQURL(1) ) );
      Qt5xHb::createReturnClass(ptr, "QNETWORKCACHEMETADATA", true);
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
void updateMetaData( const QNetworkCacheMetaData & metaData ) Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_UPDATEMETADATA )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQNETWORKCACHEMETADATA(1) )
    {
#endif
      obj->updateMetaData( *PQNETWORKCACHEMETADATA(1) );
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
QIODevice * data( const QUrl & url ) Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_DATA )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQURL(1) )
    {
#endif
      QIODevice * ptr = obj->data( *PQURL(1) );
      Qt5xHb::createReturnQObjectClass( ptr, "QIODEVICE" );
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
bool remove( const QUrl & url ) Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_REMOVE )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQURL(1) )
    {
#endif
      RBOOL( obj->remove( *PQURL(1) ) );
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
QIODevice * prepare( const QNetworkCacheMetaData & metaData ) Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_PREPARE )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQNETWORKCACHEMETADATA(1) )
    {
#endif
      QIODevice * ptr = obj->prepare( *PQNETWORKCACHEMETADATA(1) );
      Qt5xHb::createReturnQObjectClass( ptr, "QIODEVICE" );
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
void insert( QIODevice * device ) Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_INSERT )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQIODEVICE(1) )
    {
#endif
      obj->insert( PQIODEVICE(1) );
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
QNetworkCacheMetaData fileMetaData( const QString & fileName ) const
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_FILEMETADATA )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      QNetworkCacheMetaData * ptr = new QNetworkCacheMetaData( obj->fileMetaData( PQSTRING(1) ) );
      Qt5xHb::createReturnClass(ptr, "QNETWORKCACHEMETADATA", true);
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
void clear() Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_CLEAR )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clear();
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

#pragma ENDDUMP

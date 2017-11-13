/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QNETWORKCACHEMETADATA
REQUEST QIODEVICE
#endif

CLASS QNetworkDiskCache INHERIT QAbstractNetworkCache

   METHOD new
   METHOD delete
   METHOD cacheDirectory
   METHOD fileMetaData
   METHOD maximumCacheSize
   METHOD setCacheDirectory
   METHOD setMaximumCacheSize
   METHOD cacheSize
   METHOD data
   METHOD insert
   METHOD metaData
   METHOD prepare
   METHOD remove
   METHOD updateMetaData
   METHOD clear

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QNetworkDiskCache
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QNetworkDiskCache>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QNetworkDiskCache>
#endif

/*
QNetworkDiskCache ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_NEW )
{
  QNetworkDiskCache * o = new QNetworkDiskCache ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QNETWORKDISKCACHE_DELETE )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
}

/*
QString cacheDirectory () const
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_CACHEDIRECTORY )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->cacheDirectory () );
  }
}


/*
QNetworkCacheMetaData fileMetaData ( const QString & fileName ) const
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_FILEMETADATA )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkCacheMetaData * ptr = new QNetworkCacheMetaData( obj->fileMetaData ( PQSTRING(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QNETWORKCACHEMETADATA", true );
  }
}


/*
qint64 maximumCacheSize () const
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_MAXIMUMCACHESIZE )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQINT64( obj->maximumCacheSize () );
  }
}


/*
void setCacheDirectory ( const QString & cacheDir )
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_SETCACHEDIRECTORY )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCacheDirectory ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMaximumCacheSize ( qint64 size )
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_SETMAXIMUMCACHESIZE )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMaximumCacheSize ( PQINT64(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual qint64 cacheSize () const
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_CACHESIZE )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQINT64( obj->cacheSize () );
  }
}


/*
virtual QIODevice * data ( const QUrl & url )
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_DATA )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIODevice * ptr = obj->data ( *PQURL(1) );
    _qt5xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}


/*
virtual void insert ( QIODevice * device )
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_INSERT )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->insert ( PQIODEVICE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QNetworkCacheMetaData metaData ( const QUrl & url )
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_METADATA )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkCacheMetaData * ptr = new QNetworkCacheMetaData( obj->metaData ( *PQURL(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QNETWORKCACHEMETADATA", true );
  }
}


/*
virtual QIODevice * prepare ( const QNetworkCacheMetaData & metaData )
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_PREPARE )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIODevice * ptr = obj->prepare ( *PQNETWORKCACHEMETADATA(1) );
    _qt5xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}


/*
virtual bool remove ( const QUrl & url )
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_REMOVE )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->remove ( *PQURL(1) ) );
  }
}


/*
virtual void updateMetaData ( const QNetworkCacheMetaData & metaData )
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_UPDATEMETADATA )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->updateMetaData ( *PQNETWORKCACHEMETADATA(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void clear ()
*/
HB_FUNC_STATIC( QNETWORKDISKCACHE_CLEAR )
{
  QNetworkDiskCache * obj = (QNetworkDiskCache *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP

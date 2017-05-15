/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIODEVICE
REQUEST QNETWORKCACHEMETADATA
#endif

CLASS QAbstractNetworkCache INHERIT QObject

   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD delete
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

PROCEDURE destroyObject () CLASS QAbstractNetworkCache
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAbstractNetworkCache>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAbstractNetworkCache>
#endif

HB_FUNC_STATIC( QABSTRACTNETWORKCACHE_DELETE )
{
  QAbstractNetworkCache * obj = (QAbstractNetworkCache *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual qint64 cacheSize () const = 0
*/
HB_FUNC_STATIC( QABSTRACTNETWORKCACHE_CACHESIZE )
{
  QAbstractNetworkCache * obj = (QAbstractNetworkCache *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->cacheSize () );
  }
}


/*
virtual QIODevice * data ( const QUrl & url ) = 0
*/
HB_FUNC_STATIC( QABSTRACTNETWORKCACHE_DATA )
{
  QAbstractNetworkCache * obj = (QAbstractNetworkCache *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * par1 = (QUrl *) _qt5xhb_itemGetPtr(1);
    QIODevice * ptr = obj->data ( *par1 );
    _qt5xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}


/*
virtual void insert ( QIODevice * device ) = 0
*/
HB_FUNC_STATIC( QABSTRACTNETWORKCACHE_INSERT )
{
  QAbstractNetworkCache * obj = (QAbstractNetworkCache *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIODevice * par1 = (QIODevice *) _qt5xhb_itemGetPtr(1);
    obj->insert ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QNetworkCacheMetaData metaData ( const QUrl & url ) = 0
*/
HB_FUNC_STATIC( QABSTRACTNETWORKCACHE_METADATA )
{
  QAbstractNetworkCache * obj = (QAbstractNetworkCache *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * par1 = (QUrl *) _qt5xhb_itemGetPtr(1);
    QNetworkCacheMetaData * ptr = new QNetworkCacheMetaData( obj->metaData ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QNETWORKCACHEMETADATA", true );
  }
}


/*
virtual QIODevice * prepare ( const QNetworkCacheMetaData & metaData ) = 0
*/
HB_FUNC_STATIC( QABSTRACTNETWORKCACHE_PREPARE )
{
  QAbstractNetworkCache * obj = (QAbstractNetworkCache *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkCacheMetaData * par1 = (QNetworkCacheMetaData *) _qt5xhb_itemGetPtr(1);
    QIODevice * ptr = obj->prepare ( *par1 );
    _qt5xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}


/*
virtual bool remove ( const QUrl & url ) = 0
*/
HB_FUNC_STATIC( QABSTRACTNETWORKCACHE_REMOVE )
{
  QAbstractNetworkCache * obj = (QAbstractNetworkCache *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * par1 = (QUrl *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->remove ( *par1 ) );
  }
}


/*
virtual void updateMetaData ( const QNetworkCacheMetaData & metaData ) = 0
*/
HB_FUNC_STATIC( QABSTRACTNETWORKCACHE_UPDATEMETADATA )
{
  QAbstractNetworkCache * obj = (QAbstractNetworkCache *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkCacheMetaData * par1 = (QNetworkCacheMetaData *) _qt5xhb_itemGetPtr(1);
    obj->updateMetaData ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void clear () = 0
*/
HB_FUNC_STATIC( QABSTRACTNETWORKCACHE_CLEAR )
{
  QAbstractNetworkCache * obj = (QAbstractNetworkCache *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP

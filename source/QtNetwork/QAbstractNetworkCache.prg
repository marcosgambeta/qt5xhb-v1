/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QIODEVICE
REQUEST QNETWORKCACHEMETADATA
#endif

CLASS QAbstractNetworkCache INHERIT QObject

   DATA class_id INIT Class_Id_QAbstractNetworkCache
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QAbstractNetworkCache>
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
#include <QAbstractNetworkCache>
#endif
#endif

HB_FUNC_STATIC( QABSTRACTNETWORKCACHE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
virtual qint64 cacheSize () const = 0
*/
HB_FUNC_STATIC( QABSTRACTNETWORKCACHE_CACHESIZE )
{
  QAbstractNetworkCache * obj = (QAbstractNetworkCache *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->cacheSize (  ) );
  }
}


/*
virtual QIODevice * data ( const QUrl & url ) = 0
*/
HB_FUNC_STATIC( QABSTRACTNETWORKCACHE_DATA )
{
  QAbstractNetworkCache * obj = (QAbstractNetworkCache *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * par1 = (QUrl *) _qtxhb_itemGetPtr(1);
    QIODevice * ptr = obj->data ( *par1 );
    _qt4xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}


/*
virtual void insert ( QIODevice * device ) = 0
*/
HB_FUNC_STATIC( QABSTRACTNETWORKCACHE_INSERT )
{
  QAbstractNetworkCache * obj = (QAbstractNetworkCache *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIODevice * par1 = (QIODevice *) _qtxhb_itemGetPtr(1);
    obj->insert ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QNetworkCacheMetaData metaData ( const QUrl & url ) = 0
*/
HB_FUNC_STATIC( QABSTRACTNETWORKCACHE_METADATA )
{
  QAbstractNetworkCache * obj = (QAbstractNetworkCache *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * par1 = (QUrl *) _qtxhb_itemGetPtr(1);
    QNetworkCacheMetaData * ptr = new QNetworkCacheMetaData( obj->metaData ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QNETWORKCACHEMETADATA", true );
  }
}


/*
virtual QIODevice * prepare ( const QNetworkCacheMetaData & metaData ) = 0
*/
HB_FUNC_STATIC( QABSTRACTNETWORKCACHE_PREPARE )
{
  QAbstractNetworkCache * obj = (QAbstractNetworkCache *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkCacheMetaData * par1 = (QNetworkCacheMetaData *) _qtxhb_itemGetPtr(1);
    QIODevice * ptr = obj->prepare ( *par1 );
    _qt4xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}


/*
virtual bool remove ( const QUrl & url ) = 0
*/
HB_FUNC_STATIC( QABSTRACTNETWORKCACHE_REMOVE )
{
  QAbstractNetworkCache * obj = (QAbstractNetworkCache *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * par1 = (QUrl *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->remove ( *par1 ) );
  }
}


/*
virtual void updateMetaData ( const QNetworkCacheMetaData & metaData ) = 0
*/
HB_FUNC_STATIC( QABSTRACTNETWORKCACHE_UPDATEMETADATA )
{
  QAbstractNetworkCache * obj = (QAbstractNetworkCache *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkCacheMetaData * par1 = (QNetworkCacheMetaData *) _qtxhb_itemGetPtr(1);
    obj->updateMetaData ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void clear () = 0
*/
HB_FUNC_STATIC( QABSTRACTNETWORKCACHE_CLEAR )
{
  QAbstractNetworkCache * obj = (QAbstractNetworkCache *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QPIXMAP
#endif

CLASS QPixmapCache

   DATA pointer
   DATA class_id INIT Class_Id_QPixmapCache
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD cacheLimit
   METHOD setCacheLimit
   METHOD find1
   METHOD find2
   METHOD find3
   METHOD find
   METHOD insert1
   METHOD insert
   METHOD remove1
   METHOD remove
   METHOD clear
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPixmapCache
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QPixmapCache>
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
#include <QPixmapCache>
#endif


HB_FUNC_STATIC( QPIXMAPCACHE_DELETE )
{
  QPixmapCache * obj = (QPixmapCache *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
static int cacheLimit()
*/
HB_FUNC_STATIC( QPIXMAPCACHE_CACHELIMIT )
{
  hb_retni( QPixmapCache::cacheLimit (  ) );
}


/*
static void setCacheLimit(int)
*/
HB_FUNC_STATIC( QPIXMAPCACHE_SETCACHELIMIT )
{
  QPixmapCache::setCacheLimit ( (int) hb_parni(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static QPixmap *find(const QString &key)
*/
HB_FUNC_STATIC( QPIXMAPCACHE_FIND1 )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QPixmap * ptr = QPixmapCache::find ( par1 );
  _qt5xhb_createReturnClass ( ptr, "QPIXMAP" );
}


/*
static bool find(const QString &key, QPixmap &pixmap)
*/
HB_FUNC_STATIC( QPIXMAPCACHE_FIND2 )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QPixmap * par2 = (QPixmap *) _qt5xhb_itemGetPtr(2);
  hb_retl( QPixmapCache::find ( par1, *par2 ) );
}


/*
static bool find(const QString &key, QPixmap *pixmap)
*/
HB_FUNC_STATIC( QPIXMAPCACHE_FIND3 )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QPixmap * par2 = (QPixmap *) _qt5xhb_itemGetPtr(2);
  hb_retl( QPixmapCache::find ( par1, par2 ) );
}



//[1]static QPixmap *find(const QString &key)
//[2]static bool find(const QString &key, QPixmap &pixmap)
//[3]static bool find(const QString &key, QPixmap *pixmap)
//[4]static bool find(const Key &key, QPixmap *pixmap)

HB_FUNC_STATIC( QPIXMAPCACHE_FIND )
{
  // TODO: implementar
}

/*
static bool insert(const QString &key, const QPixmap &pixmap)
*/
HB_FUNC_STATIC( QPIXMAPCACHE_INSERT1 )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QPixmap * par2 = (QPixmap *) _qt5xhb_itemGetPtr(2);
  hb_retl( QPixmapCache::insert ( par1, *par2 ) );
}



//[1]static bool insert(const QString &key, const QPixmap &pixmap)
//[2]static Key insert(const QPixmap &pixmap)

HB_FUNC_STATIC( QPIXMAPCACHE_INSERT )
{
  // TODO: implementar
}


/*
static void remove(const QString &key)
*/
HB_FUNC_STATIC( QPIXMAPCACHE_REMOVE1 )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QPixmapCache::remove ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}



//[1]static void remove(const QString &key)
//[2]static void remove(const Key &key)

HB_FUNC_STATIC( QPIXMAPCACHE_REMOVE )
{
  // TODO: implementar
}

/*
static void clear()
*/
HB_FUNC_STATIC( QPIXMAPCACHE_CLEAR )
{
  QPixmapCache::clear (  );
  hb_itemReturn( hb_stackSelfItem() );
}



HB_FUNC_STATIC( QPIXMAPCACHE_NEWFROM )
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

HB_FUNC_STATIC( QPIXMAPCACHE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QPIXMAPCACHE_NEWFROM );
}

HB_FUNC_STATIC( QPIXMAPCACHE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QPIXMAPCACHE_NEWFROM );
}

HB_FUNC_STATIC( QPIXMAPCACHE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QPIXMAPCACHE_SETSELFDESTRUCTION )
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
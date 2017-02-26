/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QPLATFORMBACKINGSTORE
REQUEST QPAINTDEVICE
REQUEST QSIZE
REQUEST QREGION
REQUEST QWINDOW
#endif

CLASS QBackingStore

   DATA pointer
   DATA class_id INIT Class_Id_QBackingStore
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD beginPaint
   METHOD endPaint
   METHOD flush
   METHOD handle
   METHOD hasStaticContents
   METHOD paintDevice
   METHOD resize
   METHOD scroll
   METHOD setStaticContents
   METHOD size
   METHOD staticContents
   METHOD window
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QBackingStore
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QBackingStore>
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

#include "qt4xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QBackingStore>
#endif
#endif

/*
QBackingStore(QWindow * window)
*/
HB_FUNC_STATIC( QBACKINGSTORE_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QWindow * par1 = (QWindow *) _qtxhb_itemGetPtr(1);
  QBackingStore * o = new QBackingStore ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QBackingStore *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QBACKINGSTORE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QBackingStore * obj = (QBackingStore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void beginPaint(const QRegion & region)
*/
HB_FUNC_STATIC( QBACKINGSTORE_BEGINPAINT )
{
  QBackingStore * obj = (QBackingStore *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRegion * par1 = (QRegion *) _qtxhb_itemGetPtr(1);
    obj->beginPaint ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void endPaint()
*/
HB_FUNC_STATIC( QBACKINGSTORE_ENDPAINT )
{
  QBackingStore * obj = (QBackingStore *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->endPaint (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void flush(const QRegion & region, QWindow * win = 0, const QPoint & offset = QPoint())
*/
HB_FUNC_STATIC( QBACKINGSTORE_FLUSH )
{
  QBackingStore * obj = (QBackingStore *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRegion * par1 = (QRegion *) _qtxhb_itemGetPtr(1);
    QWindow * par2 = ISNIL(2)? 0 : (QWindow *) _qtxhb_itemGetPtr(2);
    QPoint par3 = ISNIL(3)? QPoint() : *(QPoint *) _qtxhb_itemGetPtr(3);
    obj->flush ( *par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QPlatformBackingStore * handle() const
*/
HB_FUNC_STATIC( QBACKINGSTORE_HANDLE )
{
  QBackingStore * obj = (QBackingStore *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlatformBackingStore * ptr = obj->handle (  );
    _qt4xhb_createReturnClass ( ptr, "QPLATFORMBACKINGSTORE" );
  }
}


/*
bool hasStaticContents() const
*/
HB_FUNC_STATIC( QBACKINGSTORE_HASSTATICCONTENTS )
{
  QBackingStore * obj = (QBackingStore *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasStaticContents (  ) );
  }
}


/*
QPaintDevice * paintDevice()
*/
HB_FUNC_STATIC( QBACKINGSTORE_PAINTDEVICE )
{
  QBackingStore * obj = (QBackingStore *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPaintDevice * ptr = obj->paintDevice (  );
    _qt4xhb_createReturnClass ( ptr, "QPAINTDEVICE" );
  }
}


/*
void resize(const QSize & size)
*/
HB_FUNC_STATIC( QBACKINGSTORE_RESIZE )
{
  QBackingStore * obj = (QBackingStore *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * par1 = (QSize *) _qtxhb_itemGetPtr(1);
    obj->resize ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool scroll(const QRegion & area, int dx, int dy)
*/
HB_FUNC_STATIC( QBACKINGSTORE_SCROLL )
{
  QBackingStore * obj = (QBackingStore *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRegion * par1 = (QRegion *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->scroll ( *par1, (int) hb_parni(2), (int) hb_parni(3) ) );
  }
}


/*
void setStaticContents(const QRegion & region)
*/
HB_FUNC_STATIC( QBACKINGSTORE_SETSTATICCONTENTS )
{
  QBackingStore * obj = (QBackingStore *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRegion * par1 = (QRegion *) _qtxhb_itemGetPtr(1);
    obj->setStaticContents ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSize size() const
*/
HB_FUNC_STATIC( QBACKINGSTORE_SIZE )
{
  QBackingStore * obj = (QBackingStore *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->size (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
QRegion staticContents() const
*/
HB_FUNC_STATIC( QBACKINGSTORE_STATICCONTENTS )
{
  QBackingStore * obj = (QBackingStore *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRegion * ptr = new QRegion( obj->staticContents (  ) );
    _qt4xhb_createReturnClass ( ptr, "QREGION", true );
  }
}


/*
QWindow * window() const
*/
HB_FUNC_STATIC( QBACKINGSTORE_WINDOW )
{
  QBackingStore * obj = (QBackingStore *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWindow * ptr = obj->window (  );
    _qt4xhb_createReturnClass ( ptr, "QWINDOW" );
  }
}



HB_FUNC_STATIC( QBACKINGSTORE_NEWFROM )
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

HB_FUNC_STATIC( QBACKINGSTORE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QBACKINGSTORE_NEWFROM );
}

HB_FUNC_STATIC( QBACKINGSTORE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QBACKINGSTORE_NEWFROM );
}

HB_FUNC_STATIC( QBACKINGSTORE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QBACKINGSTORE_SETSELFDESTRUCTION )
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
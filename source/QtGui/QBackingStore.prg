/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPLATFORMBACKINGSTORE
REQUEST QPAINTDEVICE
REQUEST QSIZE
REQUEST QREGION
REQUEST QWINDOW
#endif

CLASS QBackingStore

   DATA pointer
   DATA self_destruction INIT .F.

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
#include <QBackingStore>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QBackingStore>
#endif

/*
QBackingStore(QWindow * window)
*/
HB_FUNC_STATIC( QBACKINGSTORE_NEW )
{
  QWindow * par1 = (QWindow *) _qt5xhb_itemGetPtr(1);
  QBackingStore * o = new QBackingStore ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QBACKINGSTORE_DELETE )
{
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
}

/*
void beginPaint(const QRegion & region)
*/
HB_FUNC_STATIC( QBACKINGSTORE_BEGINPAINT )
{
  QBackingStore * obj = (QBackingStore *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->beginPaint ( *PQREGION(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void endPaint()
*/
HB_FUNC_STATIC( QBACKINGSTORE_ENDPAINT )
{
  QBackingStore * obj = (QBackingStore *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->endPaint ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void flush(const QRegion & region, QWindow * win = 0, const QPoint & offset = QPoint())
*/
HB_FUNC_STATIC( QBACKINGSTORE_FLUSH )
{
  QBackingStore * obj = (QBackingStore *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWindow * par2 = ISNIL(2)? 0 : (QWindow *) _qt5xhb_itemGetPtr(2);
    QPoint par3 = ISNIL(3)? QPoint() : *(QPoint *) _qt5xhb_itemGetPtr(3);
    obj->flush ( *PQREGION(1), par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QPlatformBackingStore * handle() const
*/
HB_FUNC_STATIC( QBACKINGSTORE_HANDLE )
{
  QBackingStore * obj = (QBackingStore *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlatformBackingStore * ptr = obj->handle ();
    _qt5xhb_createReturnClass ( ptr, "QPLATFORMBACKINGSTORE" );
  }
}


/*
bool hasStaticContents() const
*/
HB_FUNC_STATIC( QBACKINGSTORE_HASSTATICCONTENTS )
{
  QBackingStore * obj = (QBackingStore *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->hasStaticContents () );
  }
}


/*
QPaintDevice * paintDevice()
*/
HB_FUNC_STATIC( QBACKINGSTORE_PAINTDEVICE )
{
  QBackingStore * obj = (QBackingStore *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPaintDevice * ptr = obj->paintDevice ();
    _qt5xhb_createReturnClass ( ptr, "QPAINTDEVICE" );
  }
}


/*
void resize(const QSize & size)
*/
HB_FUNC_STATIC( QBACKINGSTORE_RESIZE )
{
  QBackingStore * obj = (QBackingStore *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->resize ( *PQSIZE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool scroll(const QRegion & area, int dx, int dy)
*/
HB_FUNC_STATIC( QBACKINGSTORE_SCROLL )
{
  QBackingStore * obj = (QBackingStore *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->scroll ( *PQREGION(1), PINT(2), PINT(3) ) );
  }
}


/*
void setStaticContents(const QRegion & region)
*/
HB_FUNC_STATIC( QBACKINGSTORE_SETSTATICCONTENTS )
{
  QBackingStore * obj = (QBackingStore *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setStaticContents ( *PQREGION(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSize size() const
*/
HB_FUNC_STATIC( QBACKINGSTORE_SIZE )
{
  QBackingStore * obj = (QBackingStore *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->size () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
QRegion staticContents() const
*/
HB_FUNC_STATIC( QBACKINGSTORE_STATICCONTENTS )
{
  QBackingStore * obj = (QBackingStore *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRegion * ptr = new QRegion( obj->staticContents () );
    _qt5xhb_createReturnClass ( ptr, "QREGION", true );
  }
}


/*
QWindow * window() const
*/
HB_FUNC_STATIC( QBACKINGSTORE_WINDOW )
{
  QBackingStore * obj = (QBackingStore *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWindow * ptr = obj->window ();
    _qt5xhb_createReturnClass ( ptr, "QWINDOW" );
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
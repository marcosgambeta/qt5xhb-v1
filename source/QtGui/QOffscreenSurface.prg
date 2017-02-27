/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QSURFACEFORMAT
REQUEST QSIZE
REQUEST QSCREEN
REQUEST QPLATFORMOFFSCREENSURFACE
#endif

CLASS QOffscreenSurface INHERIT QObject,QSurface

   DATA class_id INIT Class_Id_QOffscreenSurface
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD surfaceType
   METHOD create
   METHOD destroy
   METHOD isValid
   METHOD setFormat
   METHOD format
   METHOD requestedFormat
   METHOD size
   METHOD screen
   METHOD setScreen
   METHOD handle
   METHOD onScreenChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QOffscreenSurface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QOffscreenSurface>
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
#include <QOffscreenSurface>
#endif
#endif

/*
QOffscreenSurface(QScreen *screen = 0)
*/
HB_FUNC_STATIC( QOFFSCREENSURFACE_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QScreen * par1 = ISNIL(1)? 0 : (QScreen *) _qtxhb_itemGetPtr(1);
  QOffscreenSurface * o = new QOffscreenSurface ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QOffscreenSurface *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QOFFSCREENSURFACE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QOffscreenSurface * obj = (QOffscreenSurface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QSurface::SurfaceType surfaceType() const
*/
HB_FUNC_STATIC( QOFFSCREENSURFACE_SURFACETYPE )
{
  QOffscreenSurface * obj = (QOffscreenSurface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->surfaceType (  ) );
  }
}


/*
void create()
*/
HB_FUNC_STATIC( QOFFSCREENSURFACE_CREATE )
{
  QOffscreenSurface * obj = (QOffscreenSurface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->create (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void destroy()
*/
HB_FUNC_STATIC( QOFFSCREENSURFACE_DESTROY )
{
  QOffscreenSurface * obj = (QOffscreenSurface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->destroy (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isValid() const
*/
HB_FUNC_STATIC( QOFFSCREENSURFACE_ISVALID )
{
  QOffscreenSurface * obj = (QOffscreenSurface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
void setFormat(const QSurfaceFormat &format)
*/
HB_FUNC_STATIC( QOFFSCREENSURFACE_SETFORMAT )
{
  QOffscreenSurface * obj = (QOffscreenSurface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSurfaceFormat * par1 = (QSurfaceFormat *) _qtxhb_itemGetPtr(1);
    obj->setFormat ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSurfaceFormat format() const
*/
HB_FUNC_STATIC( QOFFSCREENSURFACE_FORMAT )
{
  QOffscreenSurface * obj = (QOffscreenSurface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSurfaceFormat * ptr = new QSurfaceFormat( obj->format (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSURFACEFORMAT" );
  }
}


/*
QSurfaceFormat requestedFormat() const
*/
HB_FUNC_STATIC( QOFFSCREENSURFACE_REQUESTEDFORMAT )
{
  QOffscreenSurface * obj = (QOffscreenSurface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSurfaceFormat * ptr = new QSurfaceFormat( obj->requestedFormat (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSURFACEFORMAT" );
  }
}


/*
QSize size() const
*/
HB_FUNC_STATIC( QOFFSCREENSURFACE_SIZE )
{
  QOffscreenSurface * obj = (QOffscreenSurface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->size (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
QScreen *screen() const
*/
HB_FUNC_STATIC( QOFFSCREENSURFACE_SCREEN )
{
  QOffscreenSurface * obj = (QOffscreenSurface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScreen * ptr = obj->screen (  );
    _qt5xhb_createReturnClass ( ptr, "QSCREEN" );
  }
}


/*
void setScreen(QScreen *screen)
*/
HB_FUNC_STATIC( QOFFSCREENSURFACE_SETSCREEN )
{
  QOffscreenSurface * obj = (QOffscreenSurface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScreen * par1 = (QScreen *) _qtxhb_itemGetPtr(1);
    obj->setScreen ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QPlatformOffscreenSurface *handle() const
*/
HB_FUNC_STATIC( QOFFSCREENSURFACE_HANDLE )
{
  QOffscreenSurface * obj = (QOffscreenSurface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlatformOffscreenSurface * ptr = obj->handle (  );
    _qt5xhb_createReturnClass ( ptr, "QPLATFORMOFFSCREENSURFACE" );
  }
}




#pragma ENDDUMP

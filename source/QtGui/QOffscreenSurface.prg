/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSURFACEFORMAT
REQUEST QSIZE
REQUEST QSCREEN
REQUEST QPLATFORMOFFSCREENSURFACE
#endif

CLASS QOffscreenSurface INHERIT QObject,QSurface

   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

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
#include <QOffscreenSurface>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QOffscreenSurface>
#endif

/*
QOffscreenSurface(QScreen *screen = 0)
*/
HB_FUNC_STATIC( QOFFSCREENSURFACE_NEW )
{
  QScreen * par1 = ISNIL(1)? 0 : (QScreen *) _qt5xhb_itemGetPtr(1);
  QOffscreenSurface * o = new QOffscreenSurface ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QOFFSCREENSURFACE_DELETE )
{
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
}

/*
QSurface::SurfaceType surfaceType() const
*/
HB_FUNC_STATIC( QOFFSCREENSURFACE_SURFACETYPE )
{
  QOffscreenSurface * obj = (QOffscreenSurface *) _qt5xhb_itemGetPtrStackSelfItem();
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
  QOffscreenSurface * obj = (QOffscreenSurface *) _qt5xhb_itemGetPtrStackSelfItem();
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
  QOffscreenSurface * obj = (QOffscreenSurface *) _qt5xhb_itemGetPtrStackSelfItem();
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
  QOffscreenSurface * obj = (QOffscreenSurface *) _qt5xhb_itemGetPtrStackSelfItem();
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
  QOffscreenSurface * obj = (QOffscreenSurface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSurfaceFormat * par1 = (QSurfaceFormat *) _qt5xhb_itemGetPtr(1);
    obj->setFormat ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSurfaceFormat format() const
*/
HB_FUNC_STATIC( QOFFSCREENSURFACE_FORMAT )
{
  QOffscreenSurface * obj = (QOffscreenSurface *) _qt5xhb_itemGetPtrStackSelfItem();
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
  QOffscreenSurface * obj = (QOffscreenSurface *) _qt5xhb_itemGetPtrStackSelfItem();
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
  QOffscreenSurface * obj = (QOffscreenSurface *) _qt5xhb_itemGetPtrStackSelfItem();
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
  QOffscreenSurface * obj = (QOffscreenSurface *) _qt5xhb_itemGetPtrStackSelfItem();
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
  QOffscreenSurface * obj = (QOffscreenSurface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScreen * par1 = (QScreen *) _qt5xhb_itemGetPtr(1);
    obj->setScreen ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QPlatformOffscreenSurface *handle() const
*/
HB_FUNC_STATIC( QOFFSCREENSURFACE_HANDLE )
{
  QOffscreenSurface * obj = (QOffscreenSurface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlatformOffscreenSurface * ptr = obj->handle (  );
    _qt5xhb_createReturnClass ( ptr, "QPLATFORMOFFSCREENSURFACE" );
  }
}




#pragma ENDDUMP

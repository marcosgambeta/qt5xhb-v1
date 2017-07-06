$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSURFACEFORMAT
REQUEST QSIZE
REQUEST QSCREEN
REQUEST QPLATFORMOFFSCREENSURFACE
#endif

CLASS QOffscreenSurface INHERIT QObject,QSurface

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

$destructor

#pragma BEGINDUMP

$includes

/*
QOffscreenSurface(QScreen *screen = 0)
*/
HB_FUNC_STATIC( QOFFSCREENSURFACE_NEW )
{
  QScreen * par1 = ISNIL(1)? 0 : (QScreen *) _qt5xhb_itemGetPtr(1);
  QOffscreenSurface * o = new QOffscreenSurface ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
QSurface::SurfaceType surfaceType() const
*/
HB_FUNC_STATIC( QOFFSCREENSURFACE_SURFACETYPE )
{
  QOffscreenSurface * obj = (QOffscreenSurface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->surfaceType () );
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
    obj->create ();
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
    obj->destroy ();
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
    RBOOL( obj->isValid () );
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
    obj->setFormat ( *PQSURFACEFORMAT(1) );
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
    QSurfaceFormat * ptr = new QSurfaceFormat( obj->format () );
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
    QSurfaceFormat * ptr = new QSurfaceFormat( obj->requestedFormat () );
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
    QSize * ptr = new QSize( obj->size () );
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
    QScreen * ptr = obj->screen ();
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
    QPlatformOffscreenSurface * ptr = obj->handle ();
    _qt5xhb_createReturnClass ( ptr, "QPLATFORMOFFSCREENSURFACE" );
  }
}




#pragma ENDDUMP

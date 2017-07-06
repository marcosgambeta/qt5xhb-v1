$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSURFACEFORMAT
REQUEST QPLATFORMSURFACE
REQUEST QSIZE
#endif

CLASS QSurface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD surfaceClass
   METHOD format
   METHOD surfaceHandle
   METHOD surfaceType
   METHOD size

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
SurfaceClass surfaceClass() const
*/
HB_FUNC_STATIC( QSURFACE_SURFACECLASS )
{
  QSurface * obj = (QSurface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->surfaceClass () );
  }
}


/*
virtual QSurfaceFormat format() const = 0
*/
HB_FUNC_STATIC( QSURFACE_FORMAT )
{
  QSurface * obj = (QSurface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSurfaceFormat * ptr = new QSurfaceFormat( obj->format () );
    _qt5xhb_createReturnClass ( ptr, "QSURFACEFORMAT" );
  }
}


/*
virtual QPlatformSurface *surfaceHandle() const = 0
*/
HB_FUNC_STATIC( QSURFACE_SURFACEHANDLE )
{
  QSurface * obj = (QSurface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlatformSurface * ptr = obj->surfaceHandle ();
    _qt5xhb_createReturnClass ( ptr, "QPLATFORMSURFACE" );
  }
}


/*
virtual SurfaceType surfaceType() const = 0
*/
HB_FUNC_STATIC( QSURFACE_SURFACETYPE )
{
  QSurface * obj = (QSurface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->surfaceType () );
  }
}


/*
virtual QSize size() const = 0
*/
HB_FUNC_STATIC( QSURFACE_SIZE )
{
  QSurface * obj = (QSurface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->size () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

$extraMethods

#pragma ENDDUMP

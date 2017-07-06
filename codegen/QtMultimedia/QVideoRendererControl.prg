$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTVIDEOSURFACE
#endif

CLASS QVideoRendererControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD setSurface
   METHOD surface

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual void setSurface(QAbstractVideoSurface * surface) = 0
*/
HB_FUNC_STATIC( QVIDEORENDERERCONTROL_SETSURFACE )
{
  QVideoRendererControl * obj = (QVideoRendererControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractVideoSurface * par1 = (QAbstractVideoSurface *) _qt5xhb_itemGetPtr(1);
    obj->setSurface ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QAbstractVideoSurface * surface() const = 0
*/
HB_FUNC_STATIC( QVIDEORENDERERCONTROL_SURFACE )
{
  QVideoRendererControl * obj = (QVideoRendererControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractVideoSurface * ptr = obj->surface ();
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTVIDEOSURFACE" );
  }
}



#pragma ENDDUMP

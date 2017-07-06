$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPAINTENGINE
#endif

CLASS QPaintDevice

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD colorCount
   METHOD depth
   METHOD height
   METHOD heightMM
   METHOD logicalDpiX
   METHOD logicalDpiY
   METHOD paintEngine
   METHOD paintingActive
   METHOD physicalDpiX
   METHOD physicalDpiY
   METHOD width
   METHOD widthMM
   METHOD devType
   METHOD devicePixelRatio

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
int colorCount () const
*/
HB_FUNC_STATIC( QPAINTDEVICE_COLORCOUNT )
{
  QPaintDevice * obj = (QPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->colorCount () );
  }
}


/*
int depth () const
*/
HB_FUNC_STATIC( QPAINTDEVICE_DEPTH )
{
  QPaintDevice * obj = (QPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->depth () );
  }
}


/*
int height () const
*/
HB_FUNC_STATIC( QPAINTDEVICE_HEIGHT )
{
  QPaintDevice * obj = (QPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->height () );
  }
}


/*
int heightMM () const
*/
HB_FUNC_STATIC( QPAINTDEVICE_HEIGHTMM )
{
  QPaintDevice * obj = (QPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->heightMM () );
  }
}


/*
int logicalDpiX () const
*/
HB_FUNC_STATIC( QPAINTDEVICE_LOGICALDPIX )
{
  QPaintDevice * obj = (QPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->logicalDpiX () );
  }
}


/*
int logicalDpiY () const
*/
HB_FUNC_STATIC( QPAINTDEVICE_LOGICALDPIY )
{
  QPaintDevice * obj = (QPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->logicalDpiY () );
  }
}



/*
virtual QPaintEngine * paintEngine () const = 0
*/
HB_FUNC_STATIC( QPAINTDEVICE_PAINTENGINE )
{
  QPaintDevice * obj = (QPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPaintEngine * ptr = obj->paintEngine ();
    _qt5xhb_createReturnClass ( ptr, "QPAINTENGINE" );
  }
}


/*
bool paintingActive () const
*/
HB_FUNC_STATIC( QPAINTDEVICE_PAINTINGACTIVE )
{
  QPaintDevice * obj = (QPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->paintingActive () );
  }
}


/*
int physicalDpiX () const
*/
HB_FUNC_STATIC( QPAINTDEVICE_PHYSICALDPIX )
{
  QPaintDevice * obj = (QPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->physicalDpiX () );
  }
}


/*
int physicalDpiY () const
*/
HB_FUNC_STATIC( QPAINTDEVICE_PHYSICALDPIY )
{
  QPaintDevice * obj = (QPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->physicalDpiY () );
  }
}


/*
int width () const
*/
HB_FUNC_STATIC( QPAINTDEVICE_WIDTH )
{
  QPaintDevice * obj = (QPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->width () );
  }
}


/*
int widthMM () const
*/
HB_FUNC_STATIC( QPAINTDEVICE_WIDTHMM )
{
  QPaintDevice * obj = (QPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->widthMM () );
  }
}


/*
virtual int devType() const
*/
HB_FUNC_STATIC( QPAINTDEVICE_DEVTYPE )
{
  QPaintDevice * obj = (QPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->devType () );
  }
}


/*
int devicePixelRatio() const
*/
HB_FUNC_STATIC( QPAINTDEVICE_DEVICEPIXELRATIO )
{
  QPaintDevice * obj = (QPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->devicePixelRatio () );
  }
}

$extraMethods

#pragma ENDDUMP

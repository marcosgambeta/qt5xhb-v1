/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPAINTENGINE
#endif

CLASS QPaintDevice

   DATA pointer
   DATA class_id INIT Class_Id_QPaintDevice
   DATA class_flags INIT 0
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

PROCEDURE destroyObject () CLASS QPaintDevice
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QPaintDevice>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QPaintDevice>
#endif

HB_FUNC_STATIC( QPAINTDEVICE_DELETE )
{
  QPaintDevice * obj = (QPaintDevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int colorCount () const
*/
HB_FUNC_STATIC( QPAINTDEVICE_COLORCOUNT )
{
  QPaintDevice * obj = (QPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->colorCount (  ) );
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
    hb_retni( obj->depth (  ) );
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
    hb_retni( obj->height (  ) );
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
    hb_retni( obj->heightMM (  ) );
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
    hb_retni( obj->logicalDpiX (  ) );
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
    hb_retni( obj->logicalDpiY (  ) );
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
    QPaintEngine * ptr = obj->paintEngine (  );
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
    hb_retl( obj->paintingActive (  ) );
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
    hb_retni( obj->physicalDpiX (  ) );
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
    hb_retni( obj->physicalDpiY (  ) );
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
    hb_retni( obj->width (  ) );
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
    hb_retni( obj->widthMM (  ) );
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
    hb_retni( obj->devType (  ) );
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
    hb_retni( obj->devicePixelRatio (  ) );
  }
}



HB_FUNC_STATIC( QPAINTDEVICE_NEWFROM )
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

HB_FUNC_STATIC( QPAINTDEVICE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QPAINTDEVICE_NEWFROM );
}

HB_FUNC_STATIC( QPAINTDEVICE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QPAINTDEVICE_NEWFROM );
}

HB_FUNC_STATIC( QPAINTDEVICE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QPAINTDEVICE_SETSELFDESTRUCTION )
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
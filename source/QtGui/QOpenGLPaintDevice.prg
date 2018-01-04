/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPAINTENGINE
REQUEST QOPENGLCONTEXT
REQUEST QSIZE
#endif

CLASS QOpenGLPaintDevice INHERIT QPaintDevice

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD devType
   METHOD paintEngine
   METHOD context
   METHOD size
   METHOD setSize
   METHOD setDevicePixelRatio
   METHOD dotsPerMeterX
   METHOD dotsPerMeterY
   METHOD setDotsPerMeterX
   METHOD setDotsPerMeterY
   METHOD setPaintFlipped
   METHOD paintFlipped
   METHOD ensureActiveTarget

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QOpenGLPaintDevice
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QOpenGLPaintDevice>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QOpenGLPaintDevice>
#endif

/*
QOpenGLPaintDevice()
*/
HB_FUNC_STATIC( QOPENGLPAINTDEVICE_NEW1 )
{
  QOpenGLPaintDevice * o = new QOpenGLPaintDevice ();
  _qt5xhb_returnNewObject( o, false );
}

/*
QOpenGLPaintDevice(const QSize &size)
*/
HB_FUNC_STATIC( QOPENGLPAINTDEVICE_NEW2 )
{
  QOpenGLPaintDevice * o = new QOpenGLPaintDevice ( *PQSIZE(1) );
  _qt5xhb_returnNewObject( o, false );
}

/*
QOpenGLPaintDevice(int width, int height)
*/
HB_FUNC_STATIC( QOPENGLPAINTDEVICE_NEW3 )
{
  QOpenGLPaintDevice * o = new QOpenGLPaintDevice ( PINT(1), PINT(2) );
  _qt5xhb_returnNewObject( o, false );
}


//[1]QOpenGLPaintDevice()
//[2]QOpenGLPaintDevice(const QSize &size)
//[3]QOpenGLPaintDevice(int width, int height)

HB_FUNC_STATIC( QOPENGLPAINTDEVICE_NEW )
{
  // TODO: implementar
}

HB_FUNC_STATIC( QOPENGLPAINTDEVICE_DELETE )
{
  QOpenGLPaintDevice * obj = (QOpenGLPaintDevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int devType() const
*/
HB_FUNC_STATIC( QOPENGLPAINTDEVICE_DEVTYPE )
{
  QOpenGLPaintDevice * obj = (QOpenGLPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->devType () );
  }
}


/*
QPaintEngine *paintEngine() const
*/
HB_FUNC_STATIC( QOPENGLPAINTDEVICE_PAINTENGINE )
{
  QOpenGLPaintDevice * obj = (QOpenGLPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPaintEngine * ptr = obj->paintEngine ();
    _qt5xhb_createReturnClass ( ptr, "QPAINTENGINE" );
  }
}


/*
QOpenGLContext *context() const
*/
HB_FUNC_STATIC( QOPENGLPAINTDEVICE_CONTEXT )
{
  QOpenGLPaintDevice * obj = (QOpenGLPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QOpenGLContext * ptr = obj->context ();
    _qt5xhb_createReturnClass ( ptr, "QOPENGLCONTEXT" );
  }
}


/*
QSize size() const
*/
HB_FUNC_STATIC( QOPENGLPAINTDEVICE_SIZE )
{
  QOpenGLPaintDevice * obj = (QOpenGLPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->size () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
void setSize(const QSize &size)
*/
HB_FUNC_STATIC( QOPENGLPAINTDEVICE_SETSIZE )
{
  QOpenGLPaintDevice * obj = (QOpenGLPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSize ( *PQSIZE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDevicePixelRatio(qreal devicePixelRatio)
*/
HB_FUNC_STATIC( QOPENGLPAINTDEVICE_SETDEVICEPIXELRATIO )
{
  QOpenGLPaintDevice * obj = (QOpenGLPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDevicePixelRatio ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal dotsPerMeterX() const
*/
HB_FUNC_STATIC( QOPENGLPAINTDEVICE_DOTSPERMETERX )
{
  QOpenGLPaintDevice * obj = (QOpenGLPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->dotsPerMeterX () );
  }
}


/*
qreal dotsPerMeterY() const
*/
HB_FUNC_STATIC( QOPENGLPAINTDEVICE_DOTSPERMETERY )
{
  QOpenGLPaintDevice * obj = (QOpenGLPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->dotsPerMeterY () );
  }
}


/*
void setDotsPerMeterX(qreal)
*/
HB_FUNC_STATIC( QOPENGLPAINTDEVICE_SETDOTSPERMETERX )
{
  QOpenGLPaintDevice * obj = (QOpenGLPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDotsPerMeterX ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDotsPerMeterY(qreal)
*/
HB_FUNC_STATIC( QOPENGLPAINTDEVICE_SETDOTSPERMETERY )
{
  QOpenGLPaintDevice * obj = (QOpenGLPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDotsPerMeterY ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPaintFlipped(bool flipped)
*/
HB_FUNC_STATIC( QOPENGLPAINTDEVICE_SETPAINTFLIPPED )
{
  QOpenGLPaintDevice * obj = (QOpenGLPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPaintFlipped ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool paintFlipped() const
*/
HB_FUNC_STATIC( QOPENGLPAINTDEVICE_PAINTFLIPPED )
{
  QOpenGLPaintDevice * obj = (QOpenGLPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->paintFlipped () );
  }
}


/*
virtual void ensureActiveTarget()
*/
HB_FUNC_STATIC( QOPENGLPAINTDEVICE_ENSUREACTIVETARGET )
{
  QOpenGLPaintDevice * obj = (QOpenGLPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->ensureActiveTarget ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP

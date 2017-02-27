/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QPAINTENGINE
REQUEST QOPENGLCONTEXT
REQUEST QSIZE
#endif

CLASS QOpenGLPaintDevice INHERIT QPaintDevice

   DATA class_id INIT Class_Id_QOpenGLPaintDevice
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QOpenGLPaintDevice>
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
#include <QOpenGLPaintDevice>
#endif
#endif

/*
QOpenGLPaintDevice()
*/
HB_FUNC_STATIC( QOPENGLPAINTDEVICE_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QOpenGLPaintDevice * o = new QOpenGLPaintDevice (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QOpenGLPaintDevice *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QOpenGLPaintDevice(const QSize &size)
*/
HB_FUNC_STATIC( QOPENGLPAINTDEVICE_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSize * par1 = (QSize *) _qtxhb_itemGetPtr(1);
  QOpenGLPaintDevice * o = new QOpenGLPaintDevice ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QOpenGLPaintDevice *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QOpenGLPaintDevice(int width, int height)
*/
HB_FUNC_STATIC( QOPENGLPAINTDEVICE_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = hb_parni(1);
  int par2 = hb_parni(2);
  QOpenGLPaintDevice * o = new QOpenGLPaintDevice ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QOpenGLPaintDevice *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
int devType() const
*/
HB_FUNC_STATIC( QOPENGLPAINTDEVICE_DEVTYPE )
{
  QOpenGLPaintDevice * obj = (QOpenGLPaintDevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->devType (  ) );
  }
}


/*
QPaintEngine *paintEngine() const
*/
HB_FUNC_STATIC( QOPENGLPAINTDEVICE_PAINTENGINE )
{
  QOpenGLPaintDevice * obj = (QOpenGLPaintDevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPaintEngine * ptr = obj->paintEngine (  );
    _qt5xhb_createReturnClass ( ptr, "QPAINTENGINE" );
  }
}


/*
QOpenGLContext *context() const
*/
HB_FUNC_STATIC( QOPENGLPAINTDEVICE_CONTEXT )
{
  QOpenGLPaintDevice * obj = (QOpenGLPaintDevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QOpenGLContext * ptr = obj->context (  );
    _qt5xhb_createReturnClass ( ptr, "QOPENGLCONTEXT" );
  }
}


/*
QSize size() const
*/
HB_FUNC_STATIC( QOPENGLPAINTDEVICE_SIZE )
{
  QOpenGLPaintDevice * obj = (QOpenGLPaintDevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->size (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
void setSize(const QSize &size)
*/
HB_FUNC_STATIC( QOPENGLPAINTDEVICE_SETSIZE )
{
  QOpenGLPaintDevice * obj = (QOpenGLPaintDevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * par1 = (QSize *) _qtxhb_itemGetPtr(1);
    obj->setSize ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDevicePixelRatio(qreal devicePixelRatio)
*/
HB_FUNC_STATIC( QOPENGLPAINTDEVICE_SETDEVICEPIXELRATIO )
{
  QOpenGLPaintDevice * obj = (QOpenGLPaintDevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setDevicePixelRatio ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal dotsPerMeterX() const
*/
HB_FUNC_STATIC( QOPENGLPAINTDEVICE_DOTSPERMETERX )
{
  QOpenGLPaintDevice * obj = (QOpenGLPaintDevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->dotsPerMeterX (  ) );
  }
}


/*
qreal dotsPerMeterY() const
*/
HB_FUNC_STATIC( QOPENGLPAINTDEVICE_DOTSPERMETERY )
{
  QOpenGLPaintDevice * obj = (QOpenGLPaintDevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->dotsPerMeterY (  ) );
  }
}


/*
void setDotsPerMeterX(qreal)
*/
HB_FUNC_STATIC( QOPENGLPAINTDEVICE_SETDOTSPERMETERX )
{
  QOpenGLPaintDevice * obj = (QOpenGLPaintDevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setDotsPerMeterX ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDotsPerMeterY(qreal)
*/
HB_FUNC_STATIC( QOPENGLPAINTDEVICE_SETDOTSPERMETERY )
{
  QOpenGLPaintDevice * obj = (QOpenGLPaintDevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setDotsPerMeterY ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPaintFlipped(bool flipped)
*/
HB_FUNC_STATIC( QOPENGLPAINTDEVICE_SETPAINTFLIPPED )
{
  QOpenGLPaintDevice * obj = (QOpenGLPaintDevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPaintFlipped ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool paintFlipped() const
*/
HB_FUNC_STATIC( QOPENGLPAINTDEVICE_PAINTFLIPPED )
{
  QOpenGLPaintDevice * obj = (QOpenGLPaintDevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->paintFlipped (  ) );
  }
}


/*
virtual void ensureActiveTarget()
*/
HB_FUNC_STATIC( QOPENGLPAINTDEVICE_ENSUREACTIVETARGET )
{
  QOpenGLPaintDevice * obj = (QOpenGLPaintDevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->ensureActiveTarget (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP

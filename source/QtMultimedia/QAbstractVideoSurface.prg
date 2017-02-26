/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QVIDEOSURFACEFORMAT
#endif

CLASS QAbstractVideoSurface INHERIT QObject

   DATA class_id INIT Class_Id_QAbstractVideoSurface
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD error
   METHOD isActive
   METHOD isFormatSupported
   METHOD nearestFormat
   METHOD present
   METHOD start
   METHOD stop
   METHOD surfaceFormat
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractVideoSurface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QAbstractVideoSurface>
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

#include "qt4xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QAbstractVideoSurface>
#endif
#endif

#include <QVideoSurfaceFormat>


HB_FUNC_STATIC( QABSTRACTVIDEOSURFACE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QAbstractVideoSurface * obj = (QAbstractVideoSurface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
Error error () const
*/
HB_FUNC_STATIC( QABSTRACTVIDEOSURFACE_ERROR )
{
  QAbstractVideoSurface * obj = (QAbstractVideoSurface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->error (  ) );
  }
}


/*
bool isActive () const
*/
HB_FUNC_STATIC( QABSTRACTVIDEOSURFACE_ISACTIVE )
{
  QAbstractVideoSurface * obj = (QAbstractVideoSurface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isActive (  ) );
  }
}


/*
virtual bool isFormatSupported ( const QVideoSurfaceFormat & format ) const
*/
HB_FUNC_STATIC( QABSTRACTVIDEOSURFACE_ISFORMATSUPPORTED )
{
  QAbstractVideoSurface * obj = (QAbstractVideoSurface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVideoSurfaceFormat * par1 = (QVideoSurfaceFormat *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->isFormatSupported ( *par1 ) );
  }
}


/*
virtual QVideoSurfaceFormat nearestFormat ( const QVideoSurfaceFormat & format ) const
*/
HB_FUNC_STATIC( QABSTRACTVIDEOSURFACE_NEARESTFORMAT )
{
  QAbstractVideoSurface * obj = (QAbstractVideoSurface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVideoSurfaceFormat * par1 = (QVideoSurfaceFormat *) _qtxhb_itemGetPtr(1);
    QVideoSurfaceFormat * ptr = new QVideoSurfaceFormat( obj->nearestFormat ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVIDEOSURFACEFORMAT", true );
  }
}


/*
virtual bool present ( const QVideoFrame & frame ) = 0
*/
HB_FUNC_STATIC( QABSTRACTVIDEOSURFACE_PRESENT )
{
  QAbstractVideoSurface * obj = (QAbstractVideoSurface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVideoFrame * par1 = (QVideoFrame *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->present ( *par1 ) );
  }
}


/*
virtual bool start ( const QVideoSurfaceFormat & format )
*/
HB_FUNC_STATIC( QABSTRACTVIDEOSURFACE_START )
{
  QAbstractVideoSurface * obj = (QAbstractVideoSurface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVideoSurfaceFormat * par1 = (QVideoSurfaceFormat *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->start ( *par1 ) );
  }
}


/*
virtual void stop ()
*/
HB_FUNC_STATIC( QABSTRACTVIDEOSURFACE_STOP )
{
  QAbstractVideoSurface * obj = (QAbstractVideoSurface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stop (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
QVideoSurfaceFormat surfaceFormat () const
*/
HB_FUNC_STATIC( QABSTRACTVIDEOSURFACE_SURFACEFORMAT )
{
  QAbstractVideoSurface * obj = (QAbstractVideoSurface *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVideoSurfaceFormat * ptr = new QVideoSurfaceFormat( obj->surfaceFormat (  ) );
    _qt4xhb_createReturnClass ( ptr, "QVIDEOSURFACEFORMAT", true );
  }
}



#pragma ENDDUMP

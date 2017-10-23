/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVIDEOSURFACEFORMAT
#endif

CLASS QAbstractVideoSurface INHERIT QObject

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
#include <QAbstractVideoSurface>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAbstractVideoSurface>
#endif

#include <QVideoSurfaceFormat>


HB_FUNC_STATIC( QABSTRACTVIDEOSURFACE_DELETE )
{
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
}

/*
Error error () const
*/
HB_FUNC_STATIC( QABSTRACTVIDEOSURFACE_ERROR )
{
  QAbstractVideoSurface * obj = (QAbstractVideoSurface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->error () );
  }
}


/*
bool isActive () const
*/
HB_FUNC_STATIC( QABSTRACTVIDEOSURFACE_ISACTIVE )
{
  QAbstractVideoSurface * obj = (QAbstractVideoSurface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isActive () );
  }
}


/*
virtual bool isFormatSupported ( const QVideoSurfaceFormat & format ) const
*/
HB_FUNC_STATIC( QABSTRACTVIDEOSURFACE_ISFORMATSUPPORTED )
{
  QAbstractVideoSurface * obj = (QAbstractVideoSurface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isFormatSupported ( *PQVIDEOSURFACEFORMAT(1) ) );
  }
}


/*
virtual QVideoSurfaceFormat nearestFormat ( const QVideoSurfaceFormat & format ) const
*/
HB_FUNC_STATIC( QABSTRACTVIDEOSURFACE_NEARESTFORMAT )
{
  QAbstractVideoSurface * obj = (QAbstractVideoSurface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVideoSurfaceFormat * ptr = new QVideoSurfaceFormat( obj->nearestFormat ( *PQVIDEOSURFACEFORMAT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QVIDEOSURFACEFORMAT", true );
  }
}


/*
virtual bool present ( const QVideoFrame & frame ) = 0
*/
HB_FUNC_STATIC( QABSTRACTVIDEOSURFACE_PRESENT )
{
  QAbstractVideoSurface * obj = (QAbstractVideoSurface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->present ( *PQVIDEOFRAME(1) ) );
  }
}


/*
virtual bool start ( const QVideoSurfaceFormat & format )
*/
HB_FUNC_STATIC( QABSTRACTVIDEOSURFACE_START )
{
  QAbstractVideoSurface * obj = (QAbstractVideoSurface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->start ( *PQVIDEOSURFACEFORMAT(1) ) );
  }
}


/*
virtual void stop ()
*/
HB_FUNC_STATIC( QABSTRACTVIDEOSURFACE_STOP )
{
  QAbstractVideoSurface * obj = (QAbstractVideoSurface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stop ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
QVideoSurfaceFormat surfaceFormat () const
*/
HB_FUNC_STATIC( QABSTRACTVIDEOSURFACE_SURFACEFORMAT )
{
  QAbstractVideoSurface * obj = (QAbstractVideoSurface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVideoSurfaceFormat * ptr = new QVideoSurfaceFormat( obj->surfaceFormat () );
    _qt5xhb_createReturnClass ( ptr, "QVIDEOSURFACEFORMAT", true );
  }
}



#pragma ENDDUMP

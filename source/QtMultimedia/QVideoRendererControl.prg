/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTVIDEOSURFACE
#endif

CLASS QVideoRendererControl INHERIT QMediaControl

   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD setSurface
   METHOD surface

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QVideoRendererControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QVideoRendererControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QVideoRendererControl>
#endif


HB_FUNC_STATIC( QVIDEORENDERERCONTROL_DELETE )
{
  QVideoRendererControl * obj = (QVideoRendererControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
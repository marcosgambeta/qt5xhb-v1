/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QWINDOW
REQUEST QOBJECT
REQUEST QTOUCHDEVICE
#endif

CLASS QTouchEvent INHERIT QInputEvent

   DATA class_id INIT Class_Id_QTouchEvent
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD window
   METHOD target
   METHOD touchPointStates
   METHOD device
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTouchEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QTouchEvent>
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
#include <QTouchEvent>
#endif
#endif

#include <QList>


HB_FUNC_STATIC( QTOUCHEVENT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QTouchEvent * obj = (QTouchEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QWindow *window() const
*/
HB_FUNC_STATIC( QTOUCHEVENT_WINDOW )
{
  QTouchEvent * obj = (QTouchEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWindow * ptr = obj->window (  );
    _qt4xhb_createReturnClass ( ptr, "QWINDOW" );
  }
}


/*
QObject *target() const
*/
HB_FUNC_STATIC( QTOUCHEVENT_TARGET )
{
  QTouchEvent * obj = (QTouchEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * ptr = obj->target (  );
    _qt4xhb_createReturnClass ( ptr, "QOBJECT" );
  }
}



/*
Qt::TouchPointStates touchPointStates() const
*/
HB_FUNC_STATIC( QTOUCHEVENT_TOUCHPOINTSTATES )
{
  QTouchEvent * obj = (QTouchEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->touchPointStates (  ) );
  }
}



/*
QTouchDevice *device() const
*/
HB_FUNC_STATIC( QTOUCHEVENT_DEVICE )
{
  QTouchEvent * obj = (QTouchEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTouchDevice * ptr = obj->device (  );
    _qt4xhb_createReturnClass ( ptr, "QTOUCHDEVICE" );
  }
}



#pragma ENDDUMP

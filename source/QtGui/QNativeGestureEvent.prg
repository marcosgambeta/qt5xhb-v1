/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QNativeGestureEvent INHERIT QInputEvent

   METHOD new
   METHOD delete
   METHOD gestureType
   METHOD value
   METHOD pos
   METHOD globalPos
   METHOD localPos
   METHOD windowPos
   METHOD screenPos

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QNativeGestureEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QNativeGestureEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QNativeGestureEvent>
#endif

/*
QNativeGestureEvent(Qt::NativeGestureType type, const QPointF &localPos, const QPointF &windowPos,const QPointF &screenPos, qreal value, ulong sequenceId, quint64 intArgument)
*/
HB_FUNC_STATIC( QNATIVEGESTUREEVENT_NEW )
{
  ulong par6 = hb_parnl(6);
  QNativeGestureEvent * o = new QNativeGestureEvent ( (Qt::NativeGestureType) hb_parni(1), *PQPOINTF(2), *PQPOINTF(3), *PQPOINTF(4), PQREAL(5), par6, PQUINT64(7) );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QNATIVEGESTUREEVENT_DELETE )
{
  QNativeGestureEvent * obj = (QNativeGestureEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
Qt::NativeGestureType gestureType() const
*/
HB_FUNC_STATIC( QNATIVEGESTUREEVENT_GESTURETYPE )
{
  QNativeGestureEvent * obj = (QNativeGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->gestureType () );
  }
}


/*
qreal value() const
*/
HB_FUNC_STATIC( QNATIVEGESTUREEVENT_VALUE )
{
  QNativeGestureEvent * obj = (QNativeGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->value () );
  }
}


/*
const QPoint pos() const
*/
HB_FUNC_STATIC( QNATIVEGESTUREEVENT_POS )
{
  QNativeGestureEvent * obj = (QNativeGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
  }
}


/*
const QPoint globalPos() const
*/
HB_FUNC_STATIC( QNATIVEGESTUREEVENT_GLOBALPOS )
{
  QNativeGestureEvent * obj = (QNativeGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
  }
}


/*
const QPointF &localPos() const
*/
HB_FUNC_STATIC( QNATIVEGESTUREEVENT_LOCALPOS )
{
  QNativeGestureEvent * obj = (QNativeGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QPointF * ptr = &obj->localPos ();
    _qt5xhb_createReturnClass ( ptr, "QPOINTF" );
  }
}


/*
const QPointF &windowPos() const
*/
HB_FUNC_STATIC( QNATIVEGESTUREEVENT_WINDOWPOS )
{
  QNativeGestureEvent * obj = (QNativeGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QPointF * ptr = &obj->windowPos ();
    _qt5xhb_createReturnClass ( ptr, "QPOINTF" );
  }
}


/*
const QPointF &screenPos() const
*/
HB_FUNC_STATIC( QNATIVEGESTUREEVENT_SCREENPOS )
{
  QNativeGestureEvent * obj = (QNativeGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QPointF * ptr = &obj->screenPos ();
    _qt5xhb_createReturnClass ( ptr, "QPOINTF" );
  }
}



#pragma ENDDUMP

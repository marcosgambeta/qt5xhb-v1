/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QPOINTF

CLASS QNativeGestureEvent INHERIT QInputEvent

   DATA class_id INIT Class_Id_QNativeGestureEvent
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QNativeGestureEvent>
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
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QNativeGestureEvent>
#endif
#endif

/*
QNativeGestureEvent(Qt::NativeGestureType type, const QPointF &localPos, const QPointF &windowPos,const QPointF &screenPos, qreal value, ulong sequenceId, quint64 intArgument)
*/
HB_FUNC_STATIC( QNATIVEGESTUREEVENT_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = hb_parni(1);
  QPointF * par2 = (QPointF *) _qtxhb_itemGetPtr(2);
  QPointF * par3 = (QPointF *) _qtxhb_itemGetPtr(3);
  QPointF * par4 = (QPointF *) _qtxhb_itemGetPtr(4);
  qreal par5 = hb_parnd(5);
  ulong par6 = hb_parnl(6);
  quint64 par7 = hb_parni(7);
  QNativeGestureEvent * o = new QNativeGestureEvent (  (Qt::NativeGestureType) par1, *par2, *par3, *par4, par5, par6, par7 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QNativeGestureEvent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QNATIVEGESTUREEVENT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
Qt::NativeGestureType gestureType() const
*/
HB_FUNC_STATIC( QNATIVEGESTUREEVENT_GESTURETYPE )
{
  QNativeGestureEvent * obj = (QNativeGestureEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->gestureType (  );
    hb_retni( i );
  }
}


/*
qreal value() const
*/
HB_FUNC_STATIC( QNATIVEGESTUREEVENT_VALUE )
{
  QNativeGestureEvent * obj = (QNativeGestureEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->value (  ) );
  }
}


/*
const QPoint pos() const
*/
HB_FUNC_STATIC( QNATIVEGESTUREEVENT_POS )
{
  QNativeGestureEvent * obj = (QNativeGestureEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
  }
}


/*
const QPoint globalPos() const
*/
HB_FUNC_STATIC( QNATIVEGESTUREEVENT_GLOBALPOS )
{
  QNativeGestureEvent * obj = (QNativeGestureEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
  }
}


/*
const QPointF &localPos() const
*/
HB_FUNC_STATIC( QNATIVEGESTUREEVENT_LOCALPOS )
{
  QNativeGestureEvent * obj = (QNativeGestureEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QPointF * ptr = &obj->localPos (  );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF" );
  }
}


/*
const QPointF &windowPos() const
*/
HB_FUNC_STATIC( QNATIVEGESTUREEVENT_WINDOWPOS )
{
  QNativeGestureEvent * obj = (QNativeGestureEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QPointF * ptr = &obj->windowPos (  );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF" );
  }
}


/*
const QPointF &screenPos() const
*/
HB_FUNC_STATIC( QNATIVEGESTUREEVENT_SCREENPOS )
{
  QNativeGestureEvent * obj = (QNativeGestureEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QPointF * ptr = &obj->screenPos (  );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF" );
  }
}



#pragma ENDDUMP

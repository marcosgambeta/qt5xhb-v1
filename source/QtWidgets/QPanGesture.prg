/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QPanGesture INHERIT QGesture

   DATA class_id INIT Class_Id_QPanGesture
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD acceleration
   METHOD delta
   METHOD lastOffset
   METHOD offset
   METHOD setAcceleration
   METHOD setLastOffset
   METHOD setOffset
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPanGesture
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QPanGesture>
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
#include <QPanGesture>
#endif
#endif

HB_FUNC_STATIC( QPANGESTURE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QPanGesture * obj = (QPanGesture *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
qreal acceleration() const
*/
HB_FUNC_STATIC( QPANGESTURE_ACCELERATION )
{
  QPanGesture * obj = (QPanGesture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->acceleration (  ) );
  }
}


/*
QPointF delta() const
*/
HB_FUNC_STATIC( QPANGESTURE_DELTA )
{
  QPanGesture * obj = (QPanGesture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->delta (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
QPointF lastOffset() const
*/
HB_FUNC_STATIC( QPANGESTURE_LASTOFFSET )
{
  QPanGesture * obj = (QPanGesture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->lastOffset (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
QPointF offset() const
*/
HB_FUNC_STATIC( QPANGESTURE_OFFSET )
{
  QPanGesture * obj = (QPanGesture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->offset (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
void setAcceleration(qreal value)
*/
HB_FUNC_STATIC( QPANGESTURE_SETACCELERATION )
{
  QPanGesture * obj = (QPanGesture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setAcceleration ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLastOffset(const QPointF & value)
*/
HB_FUNC_STATIC( QPANGESTURE_SETLASTOFFSET )
{
  QPanGesture * obj = (QPanGesture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qtxhb_itemGetPtr(1);
    obj->setLastOffset ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOffset(const QPointF & value)
*/
HB_FUNC_STATIC( QPANGESTURE_SETOFFSET )
{
  QPanGesture * obj = (QPanGesture *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qtxhb_itemGetPtr(1);
    obj->setOffset ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP

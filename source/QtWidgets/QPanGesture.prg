/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QPanGesture INHERIT QGesture

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
#include <QPanGesture>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QPanGesture>
#endif

HB_FUNC_STATIC( QPANGESTURE_DELETE )
{
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
}

/*
qreal acceleration() const
*/
HB_FUNC_STATIC( QPANGESTURE_ACCELERATION )
{
  QPanGesture * obj = (QPanGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQREAL( obj->acceleration () );
  }
}

/*
QPointF delta() const
*/
HB_FUNC_STATIC( QPANGESTURE_DELTA )
{
  QPanGesture * obj = (QPanGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPointF * ptr = new QPointF( obj->delta () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
QPointF lastOffset() const
*/
HB_FUNC_STATIC( QPANGESTURE_LASTOFFSET )
{
  QPanGesture * obj = (QPanGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPointF * ptr = new QPointF( obj->lastOffset () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
QPointF offset() const
*/
HB_FUNC_STATIC( QPANGESTURE_OFFSET )
{
  QPanGesture * obj = (QPanGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPointF * ptr = new QPointF( obj->offset () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
void setAcceleration(qreal value)
*/
HB_FUNC_STATIC( QPANGESTURE_SETACCELERATION )
{
  QPanGesture * obj = (QPanGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setAcceleration ( PQREAL(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLastOffset(const QPointF & value)
*/
HB_FUNC_STATIC( QPANGESTURE_SETLASTOFFSET )
{
  QPanGesture * obj = (QPanGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setLastOffset ( *PQPOINTF(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOffset(const QPointF & value)
*/
HB_FUNC_STATIC( QPANGESTURE_SETOFFSET )
{
  QPanGesture * obj = (QPanGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setOffset ( *PQPOINTF(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP

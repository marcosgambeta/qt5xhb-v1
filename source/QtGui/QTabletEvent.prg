/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QTabletEvent INHERIT QInputEvent

   METHOD new
   METHOD delete
   METHOD device
   METHOD globalPos
   METHOD globalPosF
   METHOD globalX
   METHOD globalY
   METHOD hiResGlobalX
   METHOD hiResGlobalY
   METHOD pointerType
   METHOD pos
   METHOD posF
   METHOD pressure
   METHOD rotation
   METHOD tangentialPressure
   METHOD uniqueId
   METHOD x
   METHOD xTilt
   METHOD y
   METHOD yTilt
   METHOD z

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTabletEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QTabletEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QTabletEvent>
#endif

/*
QTabletEvent(Type type, const QPointF & pos, const QPointF & globalPos, int device, int pointerType, qreal pressure, int xTilt, int yTilt, qreal tangentialPressure, qreal rotation, int z, Qt::KeyboardModifiers keyState, qint64 uniqueID)
*/
HB_FUNC_STATIC( QTABLETEVENT_NEW )
{
  int par12 = hb_parni(12);
  QTabletEvent * o = new QTabletEvent ( (QEvent::Type) hb_parni(1), *PQPOINTF(2), *PQPOINTF(3), PINT(4), PINT(5), PQREAL(6), PINT(7), PINT(8), PQREAL(9), PQREAL(10), PINT(11), (Qt::KeyboardModifiers) par12, PQINT64(13) );
  _qt5xhb_returnNewObject( o, false );
}


HB_FUNC_STATIC( QTABLETEVENT_DELETE )
{
  QTabletEvent * obj = (QTabletEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
TabletDevice device() const
*/
HB_FUNC_STATIC( QTABLETEVENT_DEVICE )
{
  QTabletEvent * obj = (QTabletEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->device () );
  }
}


/*
const QPoint globalPos() const
*/
HB_FUNC_STATIC( QTABLETEVENT_GLOBALPOS )
{
  QTabletEvent * obj = (QTabletEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
  }
}


/*
const QPointF & globalPosF() const
*/
HB_FUNC_STATIC( QTABLETEVENT_GLOBALPOSF )
{
  QTabletEvent * obj = (QTabletEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QPointF * ptr = &obj->globalPosF ();
    _qt5xhb_createReturnClass ( ptr, "QPOINTF" );
  }
}


/*
int globalX() const
*/
HB_FUNC_STATIC( QTABLETEVENT_GLOBALX )
{
  QTabletEvent * obj = (QTabletEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->globalX () );
  }
}


/*
int globalY() const
*/
HB_FUNC_STATIC( QTABLETEVENT_GLOBALY )
{
  QTabletEvent * obj = (QTabletEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->globalY () );
  }
}


/*
qreal hiResGlobalX() const
*/
HB_FUNC_STATIC( QTABLETEVENT_HIRESGLOBALX )
{
  QTabletEvent * obj = (QTabletEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->hiResGlobalX () );
  }
}


/*
qreal hiResGlobalY() const
*/
HB_FUNC_STATIC( QTABLETEVENT_HIRESGLOBALY )
{
  QTabletEvent * obj = (QTabletEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->hiResGlobalY () );
  }
}


/*
PointerType pointerType() const
*/
HB_FUNC_STATIC( QTABLETEVENT_POINTERTYPE )
{
  QTabletEvent * obj = (QTabletEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->pointerType () );
  }
}


/*
const QPoint pos() const
*/
HB_FUNC_STATIC( QTABLETEVENT_POS )
{
  QTabletEvent * obj = (QTabletEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
  }
}


/*
const QPointF & posF() const
*/
HB_FUNC_STATIC( QTABLETEVENT_POSF )
{
  QTabletEvent * obj = (QTabletEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QPointF * ptr = &obj->posF ();
    _qt5xhb_createReturnClass ( ptr, "QPOINTF" );
  }
}


/*
qreal pressure() const
*/
HB_FUNC_STATIC( QTABLETEVENT_PRESSURE )
{
  QTabletEvent * obj = (QTabletEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->pressure () );
  }
}


/*
qreal rotation() const
*/
HB_FUNC_STATIC( QTABLETEVENT_ROTATION )
{
  QTabletEvent * obj = (QTabletEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->rotation () );
  }
}


/*
qreal tangentialPressure() const
*/
HB_FUNC_STATIC( QTABLETEVENT_TANGENTIALPRESSURE )
{
  QTabletEvent * obj = (QTabletEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->tangentialPressure () );
  }
}


/*
qint64 uniqueId() const
*/
HB_FUNC_STATIC( QTABLETEVENT_UNIQUEID )
{
  QTabletEvent * obj = (QTabletEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQINT64( obj->uniqueId () );
  }
}


/*
int x() const
*/
HB_FUNC_STATIC( QTABLETEVENT_X )
{
  QTabletEvent * obj = (QTabletEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->x () );
  }
}


/*
int xTilt() const
*/
HB_FUNC_STATIC( QTABLETEVENT_XTILT )
{
  QTabletEvent * obj = (QTabletEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->xTilt () );
  }
}


/*
int y() const
*/
HB_FUNC_STATIC( QTABLETEVENT_Y )
{
  QTabletEvent * obj = (QTabletEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->y () );
  }
}


/*
int yTilt() const
*/
HB_FUNC_STATIC( QTABLETEVENT_YTILT )
{
  QTabletEvent * obj = (QTabletEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->yTilt () );
  }
}


/*
int z() const
*/
HB_FUNC_STATIC( QTABLETEVENT_Z )
{
  QTabletEvent * obj = (QTabletEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->z () );
  }
}



#pragma ENDDUMP

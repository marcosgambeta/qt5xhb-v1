/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINT
REQUEST QPOINTF
#endif

CLASS QEnterEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD pos
   METHOD globalPos
   METHOD x
   METHOD y
   METHOD globalX
   METHOD globalY
   METHOD localPos
   METHOD windowPos
   METHOD screenPos

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QEnterEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QEnterEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QEnterEvent>
#endif

/*
QEnterEvent(const QPointF &localPos, const QPointF &windowPos, const QPointF &screenPos)
*/
HB_FUNC_STATIC( QENTEREVENT_NEW )
{
  QEnterEvent * o = new QEnterEvent ( *PQPOINTF(1), *PQPOINTF(2), *PQPOINTF(3) );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QENTEREVENT_DELETE )
{
  QEnterEvent * obj = (QEnterEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QPoint pos() const
*/
HB_FUNC_STATIC( QENTEREVENT_POS )
{
  QEnterEvent * obj = (QEnterEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->pos () );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
QPoint globalPos() const
*/
HB_FUNC_STATIC( QENTEREVENT_GLOBALPOS )
{
  QEnterEvent * obj = (QEnterEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->globalPos () );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
int x() const
*/
HB_FUNC_STATIC( QENTEREVENT_X )
{
  QEnterEvent * obj = (QEnterEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->x () );
  }
}


/*
int y() const
*/
HB_FUNC_STATIC( QENTEREVENT_Y )
{
  QEnterEvent * obj = (QEnterEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->y () );
  }
}


/*
int globalX() const
*/
HB_FUNC_STATIC( QENTEREVENT_GLOBALX )
{
  QEnterEvent * obj = (QEnterEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->globalX () );
  }
}


/*
int globalY() const
*/
HB_FUNC_STATIC( QENTEREVENT_GLOBALY )
{
  QEnterEvent * obj = (QEnterEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->globalY () );
  }
}


/*
const QPointF &localPos() const
*/
HB_FUNC_STATIC( QENTEREVENT_LOCALPOS )
{
  QEnterEvent * obj = (QEnterEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QPointF * ptr = &obj->localPos ();
    _qt5xhb_createReturnClass ( ptr, "QPOINTF" );
  }
}


/*
const QPointF &windowPos() const
*/
HB_FUNC_STATIC( QENTEREVENT_WINDOWPOS )
{
  QEnterEvent * obj = (QEnterEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QPointF * ptr = &obj->windowPos ();
    _qt5xhb_createReturnClass ( ptr, "QPOINTF" );
  }
}


/*
const QPointF &screenPos() const
*/
HB_FUNC_STATIC( QENTEREVENT_SCREENPOS )
{
  QEnterEvent * obj = (QEnterEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QPointF * ptr = &obj->screenPos ();
    _qt5xhb_createReturnClass ( ptr, "QPOINTF" );
  }
}



#pragma ENDDUMP

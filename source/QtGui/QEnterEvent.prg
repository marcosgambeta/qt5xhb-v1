/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINT
REQUEST QPOINTF
#endif

CLASS QEnterEvent INHERIT QEvent

   DATA class_id INIT Class_Id_QEnterEvent
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

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
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QEnterEvent>
#endif

/*
QEnterEvent(const QPointF &localPos, const QPointF &windowPos, const QPointF &screenPos)
*/
HB_FUNC_STATIC( QENTEREVENT_NEW )
{
  QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
  QPointF * par2 = (QPointF *) _qt5xhb_itemGetPtr(2);
  QPointF * par3 = (QPointF *) _qt5xhb_itemGetPtr(3);
  QEnterEvent * o = new QEnterEvent ( *par1, *par2, *par3 );
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
    QPoint * ptr = new QPoint( obj->pos (  ) );
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
    QPoint * ptr = new QPoint( obj->globalPos (  ) );
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
    hb_retni( obj->x (  ) );
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
    hb_retni( obj->y (  ) );
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
    hb_retni( obj->globalX (  ) );
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
    hb_retni( obj->globalY (  ) );
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
    const QPointF * ptr = &obj->localPos (  );
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
    const QPointF * ptr = &obj->windowPos (  );
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
    const QPointF * ptr = &obj->screenPos (  );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF" );
  }
}



#pragma ENDDUMP

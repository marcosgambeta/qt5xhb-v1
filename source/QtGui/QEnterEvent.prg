/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QPOINT
REQUEST QPOINTF
#endif

CLASS QEnterEvent INHERIT QEvent

   DATA class_id INIT Class_Id_QEnterEvent
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QEnterEvent>
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

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QEnterEvent>
#endif
#endif

/*
QEnterEvent(const QPointF &localPos, const QPointF &windowPos, const QPointF &screenPos)
*/
HB_FUNC_STATIC( QENTEREVENT_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QPointF * par1 = (QPointF *) _qtxhb_itemGetPtr(1);
  QPointF * par2 = (QPointF *) _qtxhb_itemGetPtr(2);
  QPointF * par3 = (QPointF *) _qtxhb_itemGetPtr(3);
  QEnterEvent * o = new QEnterEvent ( *par1, *par2, *par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QEnterEvent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QENTEREVENT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
QPoint pos() const
*/
HB_FUNC_STATIC( QENTEREVENT_POS )
{
  QEnterEvent * obj = (QEnterEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->pos (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
QPoint globalPos() const
*/
HB_FUNC_STATIC( QENTEREVENT_GLOBALPOS )
{
  QEnterEvent * obj = (QEnterEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->globalPos (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
int x() const
*/
HB_FUNC_STATIC( QENTEREVENT_X )
{
  QEnterEvent * obj = (QEnterEvent *) _qtxhb_itemGetPtrStackSelfItem();
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
  QEnterEvent * obj = (QEnterEvent *) _qtxhb_itemGetPtrStackSelfItem();
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
  QEnterEvent * obj = (QEnterEvent *) _qtxhb_itemGetPtrStackSelfItem();
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
  QEnterEvent * obj = (QEnterEvent *) _qtxhb_itemGetPtrStackSelfItem();
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
  QEnterEvent * obj = (QEnterEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QPointF * ptr = &obj->localPos (  );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF" );
  }
}


/*
const QPointF &windowPos() const
*/
HB_FUNC_STATIC( QENTEREVENT_WINDOWPOS )
{
  QEnterEvent * obj = (QEnterEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QPointF * ptr = &obj->windowPos (  );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF" );
  }
}


/*
const QPointF &screenPos() const
*/
HB_FUNC_STATIC( QENTEREVENT_SCREENPOS )
{
  QEnterEvent * obj = (QEnterEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QPointF * ptr = &obj->screenPos (  );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF" );
  }
}



#pragma ENDDUMP

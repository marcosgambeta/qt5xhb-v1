/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QPOINT
REQUEST QPOINTF
#endif

CLASS QWheelEvent INHERIT QInputEvent

   DATA class_id INIT Class_Id_QWheelEvent
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD pixelDelta
   METHOD angleDelta
   METHOD delta
   METHOD orientation
   METHOD pos
   METHOD globalPos
   METHOD x
   METHOD y
   METHOD globalX
   METHOD globalY
   METHOD posF
   METHOD globalPosF
   METHOD buttons
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWheelEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QWheelEvent>
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
#include <QWheelEvent>
#endif
#endif

/*
QWheelEvent(const QPointF &pos, int delta,Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers,Qt::Orientation orient = Qt::Vertical)
*/
HB_FUNC_STATIC( QWHEELEVENT_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QPointF * par1 = (QPointF *) _qtxhb_itemGetPtr(1);
  int par2 = hb_parni(2);
  int par3 = hb_parni(3);
  int par4 = hb_parni(4);
  int par5 = ISNIL(5)? (int) Qt::Vertical : hb_parni(5);
  QWheelEvent * o = new QWheelEvent ( *par1, par2,  (Qt::MouseButtons) par3,  (Qt::KeyboardModifiers) par4,  (Qt::Orientation) par5 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QWheelEvent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QWheelEvent(const QPointF &pos, const QPointF& globalPos, int delta,Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers,Qt::Orientation orient = Qt::Vertical)
*/
HB_FUNC_STATIC( QWHEELEVENT_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QPointF * par1 = (QPointF *) _qtxhb_itemGetPtr(1);
  QPointF * par2 = (QPointF *) _qtxhb_itemGetPtr(2);
  int par3 = hb_parni(3);
  int par4 = hb_parni(4);
  int par5 = hb_parni(5);
  int par6 = ISNIL(6)? (int) Qt::Vertical : hb_parni(6);
  QWheelEvent * o = new QWheelEvent ( *par1, *par2, par3,  (Qt::MouseButtons) par4,  (Qt::KeyboardModifiers) par5,  (Qt::Orientation) par6 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QWheelEvent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QWheelEvent(const QPointF &pos, const QPointF& globalPos,QPoint pixelDelta, QPoint angleDelta, int qt4Delta, Qt::Orientation qt4Orientation,Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers)
*/
HB_FUNC_STATIC( QWHEELEVENT_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QPointF * par1 = (QPointF *) _qtxhb_itemGetPtr(1);
  QPointF * par2 = (QPointF *) _qtxhb_itemGetPtr(2);
  QPoint * par3 = (QPoint *) _qtxhb_itemGetPtr(3);
  QPoint * par4 = (QPoint *) _qtxhb_itemGetPtr(4);
  int par5 = hb_parni(5);
  int par6 = hb_parni(6);
  int par7 = hb_parni(7);
  int par8 = hb_parni(8);
  QWheelEvent * o = new QWheelEvent ( *par1, *par2, *par3, *par4, par5,  (Qt::Orientation) par6,  (Qt::MouseButtons) par7,  (Qt::KeyboardModifiers) par8 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QWheelEvent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QWheelEvent(const QPointF &pos, int delta,Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers,Qt::Orientation orient = Qt::Vertical);
//[2]QWheelEvent(const QPointF &pos, const QPointF& globalPos, int delta,Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers,Qt::Orientation orient = Qt::Vertical);
//[3]QWheelEvent(const QPointF &pos, const QPointF& globalPos,QPoint pixelDelta, QPoint angleDelta, int qt4Delta, Qt::Orientation qt4Orientation,Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers);

HB_FUNC_STATIC( QWHEELEVENT_NEW )
{
  // TODO: implementar
}

HB_FUNC_STATIC( QWHEELEVENT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QWheelEvent * obj = (QWheelEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QPoint pixelDelta() const
*/
HB_FUNC_STATIC( QWHEELEVENT_PIXELDELTA )
{
  QWheelEvent * obj = (QWheelEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->pixelDelta (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
QPoint angleDelta() const
*/
HB_FUNC_STATIC( QWHEELEVENT_ANGLEDELTA )
{
  QWheelEvent * obj = (QWheelEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->angleDelta (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
int delta() const
*/
HB_FUNC_STATIC( QWHEELEVENT_DELTA )
{
  QWheelEvent * obj = (QWheelEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->delta (  ) );
  }
}


/*
Qt::Orientation orientation() const
*/
HB_FUNC_STATIC( QWHEELEVENT_ORIENTATION )
{
  QWheelEvent * obj = (QWheelEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->orientation (  ) );
  }
}


/*
QPoint pos() const
*/
HB_FUNC_STATIC( QWHEELEVENT_POS )
{
  QWheelEvent * obj = (QWheelEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->pos (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
QPoint globalPos() const
*/
HB_FUNC_STATIC( QWHEELEVENT_GLOBALPOS )
{
  QWheelEvent * obj = (QWheelEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->globalPos (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
int x() const
*/
HB_FUNC_STATIC( QWHEELEVENT_X )
{
  QWheelEvent * obj = (QWheelEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->x (  ) );
  }
}


/*
int y() const
*/
HB_FUNC_STATIC( QWHEELEVENT_Y )
{
  QWheelEvent * obj = (QWheelEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->y (  ) );
  }
}


/*
int globalX() const
*/
HB_FUNC_STATIC( QWHEELEVENT_GLOBALX )
{
  QWheelEvent * obj = (QWheelEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->globalX (  ) );
  }
}


/*
int globalY() const
*/
HB_FUNC_STATIC( QWHEELEVENT_GLOBALY )
{
  QWheelEvent * obj = (QWheelEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->globalY (  ) );
  }
}


/*
const QPointF &posF() const
*/
HB_FUNC_STATIC( QWHEELEVENT_POSF )
{
  QWheelEvent * obj = (QWheelEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QPointF * ptr = &obj->posF (  );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF" );
  }
}


/*
const QPointF &globalPosF() const
*/
HB_FUNC_STATIC( QWHEELEVENT_GLOBALPOSF )
{
  QWheelEvent * obj = (QWheelEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QPointF * ptr = &obj->globalPosF (  );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF" );
  }
}


/*
Qt::MouseButtons buttons() const
*/
HB_FUNC_STATIC( QWHEELEVENT_BUTTONS )
{
  QWheelEvent * obj = (QWheelEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->buttons (  ) );
  }
}



#pragma ENDDUMP

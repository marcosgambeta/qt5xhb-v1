/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINT
REQUEST QPOINTF
#endif

CLASS QWheelEvent INHERIT QInputEvent

   DATA self_destruction INIT .F.

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
#include <QWheelEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QWheelEvent>
#endif

/*
QWheelEvent(const QPointF &pos, int delta,Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers,Qt::Orientation orient = Qt::Vertical)
*/
HB_FUNC_STATIC( QWHEELEVENT_NEW1 )
{
  QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
  int par2 = hb_parni(2);
  int par3 = hb_parni(3);
  int par4 = hb_parni(4);
  int par5 = ISNIL(5)? (int) Qt::Vertical : hb_parni(5);
  QWheelEvent * o = new QWheelEvent ( *par1, par2,  (Qt::MouseButtons) par3,  (Qt::KeyboardModifiers) par4,  (Qt::Orientation) par5 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QWheelEvent(const QPointF &pos, const QPointF& globalPos, int delta,Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers,Qt::Orientation orient = Qt::Vertical)
*/
HB_FUNC_STATIC( QWHEELEVENT_NEW2 )
{
  QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
  QPointF * par2 = (QPointF *) _qt5xhb_itemGetPtr(2);
  int par3 = hb_parni(3);
  int par4 = hb_parni(4);
  int par5 = hb_parni(5);
  int par6 = ISNIL(6)? (int) Qt::Vertical : hb_parni(6);
  QWheelEvent * o = new QWheelEvent ( *par1, *par2, par3,  (Qt::MouseButtons) par4,  (Qt::KeyboardModifiers) par5,  (Qt::Orientation) par6 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QWheelEvent(const QPointF &pos, const QPointF& globalPos,QPoint pixelDelta, QPoint angleDelta, int qt4Delta, Qt::Orientation qt4Orientation,Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers)
*/
HB_FUNC_STATIC( QWHEELEVENT_NEW3 )
{
  QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
  QPointF * par2 = (QPointF *) _qt5xhb_itemGetPtr(2);
  QPoint * par3 = (QPoint *) _qt5xhb_itemGetPtr(3);
  QPoint * par4 = (QPoint *) _qt5xhb_itemGetPtr(4);
  int par5 = hb_parni(5);
  int par6 = hb_parni(6);
  int par7 = hb_parni(7);
  int par8 = hb_parni(8);
  QWheelEvent * o = new QWheelEvent ( *par1, *par2, *par3, *par4, par5,  (Qt::Orientation) par6,  (Qt::MouseButtons) par7,  (Qt::KeyboardModifiers) par8 );
  _qt5xhb_storePointerAndFlag( o, false );
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
}

/*
QPoint pixelDelta() const
*/
HB_FUNC_STATIC( QWHEELEVENT_PIXELDELTA )
{
  QWheelEvent * obj = (QWheelEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->pixelDelta () );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
QPoint angleDelta() const
*/
HB_FUNC_STATIC( QWHEELEVENT_ANGLEDELTA )
{
  QWheelEvent * obj = (QWheelEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->angleDelta () );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
int delta() const
*/
HB_FUNC_STATIC( QWHEELEVENT_DELTA )
{
  QWheelEvent * obj = (QWheelEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->delta () );
  }
}


/*
Qt::Orientation orientation() const
*/
HB_FUNC_STATIC( QWHEELEVENT_ORIENTATION )
{
  QWheelEvent * obj = (QWheelEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->orientation () );
  }
}


/*
QPoint pos() const
*/
HB_FUNC_STATIC( QWHEELEVENT_POS )
{
  QWheelEvent * obj = (QWheelEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->pos () );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
QPoint globalPos() const
*/
HB_FUNC_STATIC( QWHEELEVENT_GLOBALPOS )
{
  QWheelEvent * obj = (QWheelEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->globalPos () );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
int x() const
*/
HB_FUNC_STATIC( QWHEELEVENT_X )
{
  QWheelEvent * obj = (QWheelEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->x () );
  }
}


/*
int y() const
*/
HB_FUNC_STATIC( QWHEELEVENT_Y )
{
  QWheelEvent * obj = (QWheelEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->y () );
  }
}


/*
int globalX() const
*/
HB_FUNC_STATIC( QWHEELEVENT_GLOBALX )
{
  QWheelEvent * obj = (QWheelEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->globalX () );
  }
}


/*
int globalY() const
*/
HB_FUNC_STATIC( QWHEELEVENT_GLOBALY )
{
  QWheelEvent * obj = (QWheelEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->globalY () );
  }
}


/*
const QPointF &posF() const
*/
HB_FUNC_STATIC( QWHEELEVENT_POSF )
{
  QWheelEvent * obj = (QWheelEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QPointF * ptr = &obj->posF ();
    _qt5xhb_createReturnClass ( ptr, "QPOINTF" );
  }
}


/*
const QPointF &globalPosF() const
*/
HB_FUNC_STATIC( QWHEELEVENT_GLOBALPOSF )
{
  QWheelEvent * obj = (QWheelEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QPointF * ptr = &obj->globalPosF ();
    _qt5xhb_createReturnClass ( ptr, "QPOINTF" );
  }
}


/*
Qt::MouseButtons buttons() const
*/
HB_FUNC_STATIC( QWHEELEVENT_BUTTONS )
{
  QWheelEvent * obj = (QWheelEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->buttons () );
  }
}



#pragma ENDDUMP

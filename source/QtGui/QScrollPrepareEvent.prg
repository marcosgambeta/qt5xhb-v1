/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
REQUEST QSIZEF
REQUEST QRECTF
#endif

CLASS QScrollPrepareEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD startPos
   METHOD viewportSize
   METHOD contentPosRange
   METHOD contentPos
   METHOD setViewportSize
   METHOD setContentPosRange
   METHOD setContentPos

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QScrollPrepareEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QScrollPrepareEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QScrollPrepareEvent>
#endif

/*
QScrollPrepareEvent(const QPointF &startPos)
*/
HB_FUNC_STATIC( QSCROLLPREPAREEVENT_NEW )
{
  QScrollPrepareEvent * o = new QScrollPrepareEvent ( *PQPOINTF(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QSCROLLPREPAREEVENT_DELETE )
{
  QScrollPrepareEvent * obj = (QScrollPrepareEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QPointF startPos() const
*/
HB_FUNC_STATIC( QSCROLLPREPAREEVENT_STARTPOS )
{
  QScrollPrepareEvent * obj = (QScrollPrepareEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->startPos () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
QSizeF viewportSize() const
*/
HB_FUNC_STATIC( QSCROLLPREPAREEVENT_VIEWPORTSIZE )
{
  QScrollPrepareEvent * obj = (QScrollPrepareEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->viewportSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}


/*
QRectF contentPosRange() const
*/
HB_FUNC_STATIC( QSCROLLPREPAREEVENT_CONTENTPOSRANGE )
{
  QScrollPrepareEvent * obj = (QScrollPrepareEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->contentPosRange () );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
QPointF contentPos() const
*/
HB_FUNC_STATIC( QSCROLLPREPAREEVENT_CONTENTPOS )
{
  QScrollPrepareEvent * obj = (QScrollPrepareEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->contentPos () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
void setViewportSize(const QSizeF &size)
*/
HB_FUNC_STATIC( QSCROLLPREPAREEVENT_SETVIEWPORTSIZE )
{
  QScrollPrepareEvent * obj = (QScrollPrepareEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setViewportSize ( *PQSIZEF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setContentPosRange(const QRectF &rect)
*/
HB_FUNC_STATIC( QSCROLLPREPAREEVENT_SETCONTENTPOSRANGE )
{
  QScrollPrepareEvent * obj = (QScrollPrepareEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setContentPosRange ( *PQRECTF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setContentPos(const QPointF &pos)
*/
HB_FUNC_STATIC( QSCROLLPREPAREEVENT_SETCONTENTPOS )
{
  QScrollPrepareEvent * obj = (QScrollPrepareEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setContentPos ( *PQPOINTF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP

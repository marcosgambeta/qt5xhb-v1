/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QPOINTF
REQUEST QSIZEF
REQUEST QRECTF

CLASS QScrollPrepareEvent INHERIT QEvent

   DATA class_id INIT Class_Id_QScrollPrepareEvent
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QScrollPrepareEvent>
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
#include <QScrollPrepareEvent>
#endif
#endif

/*
QScrollPrepareEvent(const QPointF &startPos)
*/
HB_FUNC_STATIC( QSCROLLPREPAREEVENT_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QPointF * par1 = (QPointF *) _qtxhb_itemGetPtr(1);
  QScrollPrepareEvent * o = new QScrollPrepareEvent ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QScrollPrepareEvent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QSCROLLPREPAREEVENT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
QPointF startPos() const
*/
HB_FUNC_STATIC( QSCROLLPREPAREEVENT_STARTPOS )
{
  QScrollPrepareEvent * obj = (QScrollPrepareEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->startPos (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
QSizeF viewportSize() const
*/
HB_FUNC_STATIC( QSCROLLPREPAREEVENT_VIEWPORTSIZE )
{
  QScrollPrepareEvent * obj = (QScrollPrepareEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->viewportSize (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}


/*
QRectF contentPosRange() const
*/
HB_FUNC_STATIC( QSCROLLPREPAREEVENT_CONTENTPOSRANGE )
{
  QScrollPrepareEvent * obj = (QScrollPrepareEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->contentPosRange (  ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
QPointF contentPos() const
*/
HB_FUNC_STATIC( QSCROLLPREPAREEVENT_CONTENTPOS )
{
  QScrollPrepareEvent * obj = (QScrollPrepareEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->contentPos (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
void setViewportSize(const QSizeF &size)
*/
HB_FUNC_STATIC( QSCROLLPREPAREEVENT_SETVIEWPORTSIZE )
{
  QScrollPrepareEvent * obj = (QScrollPrepareEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSizeF * par1 = (QSizeF *) _qtxhb_itemGetPtr(1);
    obj->setViewportSize ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setContentPosRange(const QRectF &rect)
*/
HB_FUNC_STATIC( QSCROLLPREPAREEVENT_SETCONTENTPOSRANGE )
{
  QScrollPrepareEvent * obj = (QScrollPrepareEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qtxhb_itemGetPtr(1);
    obj->setContentPosRange ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setContentPos(const QPointF &pos)
*/
HB_FUNC_STATIC( QSCROLLPREPAREEVENT_SETCONTENTPOS )
{
  QScrollPrepareEvent * obj = (QScrollPrepareEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qtxhb_itemGetPtr(1);
    obj->setContentPos ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP

/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPAINTERPATH
REQUEST QRECTF
#endif

CLASS QGraphicsPathItem INHERIT QAbstractGraphicsShapeItem

   METHOD new
   METHOD delete
   METHOD path
   METHOD setPath
   METHOD boundingRect
   METHOD contains
   METHOD isObscuredBy
   METHOD opaqueArea
   METHOD paint
   METHOD shape
   METHOD type

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsPathItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QGraphicsPathItem>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QGraphicsPathItem>
#endif

/*
QGraphicsPathItem ( QGraphicsItem * parent = 0 )
*/
void QGraphicsPathItem_new1 ()
{
  QGraphicsItem * par1 = ISNIL(1)? 0 : (QGraphicsItem *) _qt5xhb_itemGetPtr(1);
  QGraphicsPathItem * o = new QGraphicsPathItem ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QGraphicsPathItem ( const QPainterPath & path, QGraphicsItem * parent = 0 )
*/
void QGraphicsPathItem_new2 ()
{
  QGraphicsItem * par2 = ISNIL(2)? 0 : (QGraphicsItem *) _qt5xhb_itemGetPtr(2);
  QGraphicsPathItem * o = new QGraphicsPathItem ( *PQPAINTERPATH(1), par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QGraphicsPathItem ( QGraphicsItem * parent = 0 )
//[2]QGraphicsPathItem ( const QPainterPath & path, QGraphicsItem * parent = 0 )

HB_FUNC_STATIC( QGRAPHICSPATHITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSITEM(1)||ISNIL(1)) )
  {
    QGraphicsPathItem_new1();
  }
  else if( ISBETWEEN(1,2) && ISQPAINTERPATH(1) && (ISQGRAPHICSITEM(2)||ISNIL(2)) )
  {
    QGraphicsPathItem_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGRAPHICSPATHITEM_DELETE )
{
  QGraphicsPathItem * obj = (QGraphicsPathItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QPainterPath path () const
*/
HB_FUNC_STATIC( QGRAPHICSPATHITEM_PATH )
{
  QGraphicsPathItem * obj = (QGraphicsPathItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->path () );
    _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
void setPath ( const QPainterPath & path )
*/
HB_FUNC_STATIC( QGRAPHICSPATHITEM_SETPATH )
{
  QGraphicsPathItem * obj = (QGraphicsPathItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPAINTERPATH(1) )
    {
      obj->setPath ( *PQPAINTERPATH(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QRectF boundingRect () const
*/
HB_FUNC_STATIC( QGRAPHICSPATHITEM_BOUNDINGRECT )
{
  QGraphicsPathItem * obj = (QGraphicsPathItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRectF * ptr = new QRectF( obj->boundingRect () );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
virtual bool contains ( const QPointF & point ) const
*/
HB_FUNC_STATIC( QGRAPHICSPATHITEM_CONTAINS )
{
  QGraphicsPathItem * obj = (QGraphicsPathItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPOINTF(1) )
    {
      RBOOL( obj->contains ( *PQPOINTF(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool isObscuredBy ( const QGraphicsItem * item ) const
*/
HB_FUNC_STATIC( QGRAPHICSPATHITEM_ISOBSCUREDBY )
{
  QGraphicsPathItem * obj = (QGraphicsPathItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQGRAPHICSITEM(1) )
    {
      const QGraphicsItem * par1 = (const QGraphicsItem *) _qt5xhb_itemGetPtr(1);
      RBOOL( obj->isObscuredBy ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QPainterPath opaqueArea () const
*/
HB_FUNC_STATIC( QGRAPHICSPATHITEM_OPAQUEAREA )
{
  QGraphicsPathItem * obj = (QGraphicsPathItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->opaqueArea () );
    _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSPATHITEM_PAINT )
{
  QGraphicsPathItem * obj = (QGraphicsPathItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPAINTER(1) && ISQSTYLEOPTIONGRAPHICSITEM(2) && ISOPTQWIDGET(3) )
    {
      const QStyleOptionGraphicsItem * par2 = (const QStyleOptionGraphicsItem *) _qt5xhb_itemGetPtr(2);
      obj->paint ( PQPAINTER(1), par2, OPQWIDGET(3,0) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QPainterPath shape () const
*/
HB_FUNC_STATIC( QGRAPHICSPATHITEM_SHAPE )
{
  QGraphicsPathItem * obj = (QGraphicsPathItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->shape () );
    _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
virtual int type () const
*/
HB_FUNC_STATIC( QGRAPHICSPATHITEM_TYPE )
{
  QGraphicsPathItem * obj = (QGraphicsPathItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->type () );
  }
}

#pragma ENDDUMP

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOLYGONF
REQUEST QRECTF
REQUEST QPAINTERPATH
#endif

CLASS QGraphicsPolygonItem INHERIT QAbstractGraphicsShapeItem

   METHOD new
   METHOD delete
   METHOD fillRule
   METHOD polygon
   METHOD setFillRule
   METHOD setPolygon
   METHOD boundingRect
   METHOD contains
   METHOD isObscuredBy
   METHOD opaqueArea
   METHOD paint
   METHOD shape
   METHOD type

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsPolygonItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QGraphicsPolygonItem>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QGraphicsPolygonItem>
#endif

/*
QGraphicsPolygonItem ( QGraphicsItem * parent = 0 )
*/
void QGraphicsPolygonItem_new1 ()
{
  QGraphicsItem * par1 = ISNIL(1)? 0 : (QGraphicsItem *) _qt5xhb_itemGetPtr(1);
  QGraphicsPolygonItem * o = new QGraphicsPolygonItem ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QGraphicsPolygonItem ( const QPolygonF & polygon, QGraphicsItem * parent = 0 )
*/
void QGraphicsPolygonItem_new2 ()
{
  QGraphicsItem * par2 = ISNIL(2)? 0 : (QGraphicsItem *) _qt5xhb_itemGetPtr(2);
  QGraphicsPolygonItem * o = new QGraphicsPolygonItem ( *PQPOLYGONF(1), par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QGraphicsPolygonItem ( QGraphicsItem * parent = 0 )
//[2]QGraphicsPolygonItem ( const QPolygonF & polygon, QGraphicsItem * parent = 0 )

HB_FUNC_STATIC( QGRAPHICSPOLYGONITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSITEM(1)||ISNIL(1)) )
  {
    QGraphicsPolygonItem_new1();
  }
  else if( ISBETWEEN(1,2) && ISQPOLYGONF(1) && (ISQGRAPHICSITEM(2)||ISNIL(2)) )
  {
    QGraphicsPolygonItem_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGRAPHICSPOLYGONITEM_DELETE )
{
  QGraphicsPolygonItem * obj = (QGraphicsPolygonItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
Qt::FillRule fillRule () const
*/
HB_FUNC_STATIC( QGRAPHICSPOLYGONITEM_FILLRULE )
{
  QGraphicsPolygonItem * obj = (QGraphicsPolygonItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->fillRule () );
  }
}

/*
QPolygonF polygon () const
*/
HB_FUNC_STATIC( QGRAPHICSPOLYGONITEM_POLYGON )
{
  QGraphicsPolygonItem * obj = (QGraphicsPolygonItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPolygonF * ptr = new QPolygonF( obj->polygon () );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

/*
void setFillRule ( Qt::FillRule rule )
*/
HB_FUNC_STATIC( QGRAPHICSPOLYGONITEM_SETFILLRULE )
{
  QGraphicsPolygonItem * obj = (QGraphicsPolygonItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setFillRule ( (Qt::FillRule) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPolygon ( const QPolygonF & polygon )
*/
HB_FUNC_STATIC( QGRAPHICSPOLYGONITEM_SETPOLYGON )
{
  QGraphicsPolygonItem * obj = (QGraphicsPolygonItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPOLYGONF(1) )
    {
      obj->setPolygon ( *PQPOLYGONF(1) );
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
HB_FUNC_STATIC( QGRAPHICSPOLYGONITEM_BOUNDINGRECT )
{
  QGraphicsPolygonItem * obj = (QGraphicsPolygonItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRectF * ptr = new QRectF( obj->boundingRect () );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
virtual bool contains ( const QPointF & point ) const
*/
HB_FUNC_STATIC( QGRAPHICSPOLYGONITEM_CONTAINS )
{
  QGraphicsPolygonItem * obj = (QGraphicsPolygonItem *) _qt5xhb_itemGetPtrStackSelfItem();

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
HB_FUNC_STATIC( QGRAPHICSPOLYGONITEM_ISOBSCUREDBY )
{
  QGraphicsPolygonItem * obj = (QGraphicsPolygonItem *) _qt5xhb_itemGetPtrStackSelfItem();

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
HB_FUNC_STATIC( QGRAPHICSPOLYGONITEM_OPAQUEAREA )
{
  QGraphicsPolygonItem * obj = (QGraphicsPolygonItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->opaqueArea () );
    _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSPOLYGONITEM_PAINT )
{
  QGraphicsPolygonItem * obj = (QGraphicsPolygonItem *) _qt5xhb_itemGetPtrStackSelfItem();

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
HB_FUNC_STATIC( QGRAPHICSPOLYGONITEM_SHAPE )
{
  QGraphicsPolygonItem * obj = (QGraphicsPolygonItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->shape () );
    _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
virtual int type () const
*/
HB_FUNC_STATIC( QGRAPHICSPOLYGONITEM_TYPE )
{
  QGraphicsPolygonItem * obj = (QGraphicsPolygonItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->type () );
  }
}

#pragma ENDDUMP

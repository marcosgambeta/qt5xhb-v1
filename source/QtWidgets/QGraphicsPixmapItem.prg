/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
REQUEST QPIXMAP
REQUEST QRECTF
REQUEST QPAINTERPATH
#endif

CLASS QGraphicsPixmapItem INHERIT QGraphicsItem

   METHOD new
   METHOD delete
   METHOD offset
   METHOD pixmap
   METHOD setOffset
   METHOD setPixmap
   METHOD setShapeMode
   METHOD setTransformationMode
   METHOD shapeMode
   METHOD transformationMode
   METHOD boundingRect
   METHOD contains
   METHOD isObscuredBy
   METHOD opaqueArea
   METHOD paint
   METHOD shape
   METHOD type

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsPixmapItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QGraphicsPixmapItem>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QGraphicsPixmapItem>
#endif

/*
QGraphicsPixmapItem ( QGraphicsItem * parent = 0 )
*/
void QGraphicsPixmapItem_new1 ()
{
  QGraphicsItem * par1 = ISNIL(1)? 0 : (QGraphicsItem *) _qt5xhb_itemGetPtr(1);
  QGraphicsPixmapItem * o = new QGraphicsPixmapItem ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QGraphicsPixmapItem ( const QPixmap & pixmap, QGraphicsItem * parent = 0 )
*/
void QGraphicsPixmapItem_new2 ()
{
  QGraphicsItem * par2 = ISNIL(2)? 0 : (QGraphicsItem *) _qt5xhb_itemGetPtr(2);
  QGraphicsPixmapItem * o = new QGraphicsPixmapItem ( *PQPIXMAP(1), par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QGraphicsPixmapItem ( QGraphicsItem * parent = 0 )
//[2]QGraphicsPixmapItem ( const QPixmap & pixmap, QGraphicsItem * parent = 0 )

HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSITEM(1)||ISNIL(1)) )
  {
    QGraphicsPixmapItem_new1();
  }
  else if( ISBETWEEN(1,2) && ISQPIXMAP(1) && (ISQGRAPHICSITEM(2)||ISNIL(2)) )
  {
    QGraphicsPixmapItem_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_DELETE )
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QPointF offset () const
*/
HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_OFFSET )
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPointF * ptr = new QPointF( obj->offset () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
QPixmap pixmap () const
*/
HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_PIXMAP )
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPixmap * ptr = new QPixmap( obj->pixmap () );
    _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}

/*
void setOffset ( const QPointF & offset )
*/
void QGraphicsPixmapItem_setOffset1 ()
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setOffset ( *PQPOINTF(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOffset ( qreal x, qreal y )
*/
void QGraphicsPixmapItem_setOffset2 ()
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setOffset ( PQREAL(1), PQREAL(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setOffset ( const QPointF & offset )
//[2]void setOffset ( qreal x, qreal y )

HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_SETOFFSET )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QGraphicsPixmapItem_setOffset1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsPixmapItem_setOffset2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setPixmap ( const QPixmap & pixmap )
*/
HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_SETPIXMAP )
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPIXMAP(1) )
    {
      obj->setPixmap ( *PQPIXMAP(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setShapeMode ( ShapeMode mode )
*/
HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_SETSHAPEMODE )
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setShapeMode ( (QGraphicsPixmapItem::ShapeMode) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTransformationMode ( Qt::TransformationMode mode )
*/
HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_SETTRANSFORMATIONMODE )
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setTransformationMode ( (Qt::TransformationMode) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
ShapeMode shapeMode () const
*/
HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_SHAPEMODE )
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->shapeMode () );
  }
}

/*
Qt::TransformationMode transformationMode () const
*/
HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_TRANSFORMATIONMODE )
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->transformationMode () );
  }
}

/*
virtual QRectF boundingRect () const
*/
HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_BOUNDINGRECT )
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRectF * ptr = new QRectF( obj->boundingRect () );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
virtual bool contains ( const QPointF & point ) const
*/
HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_CONTAINS )
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) _qt5xhb_itemGetPtrStackSelfItem();

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
HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_ISOBSCUREDBY )
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) _qt5xhb_itemGetPtrStackSelfItem();

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
HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_OPAQUEAREA )
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->opaqueArea () );
    _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget )
*/
HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_PAINT )
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPAINTER(1) && ISQSTYLEOPTIONGRAPHICSITEM(2) && ISQWIDGET(3) )
    {
      const QStyleOptionGraphicsItem * par2 = (const QStyleOptionGraphicsItem *) _qt5xhb_itemGetPtr(2);
      obj->paint ( PQPAINTER(1), par2, PQWIDGET(3) );
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
HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_SHAPE )
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->shape () );
    _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
virtual int type () const
*/
HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_TYPE )
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->type () );
  }
}

#pragma ENDDUMP

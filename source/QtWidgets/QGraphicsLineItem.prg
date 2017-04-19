/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QLINEF
REQUEST QPEN
REQUEST QRECTF
REQUEST QPAINTERPATH
#endif

CLASS QGraphicsLineItem INHERIT QGraphicsItem

   DATA class_id INIT Class_Id_QGraphicsLineItem
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD line
   METHOD pen
   METHOD setLine
   METHOD setPen
   METHOD boundingRect
   METHOD contains
   METHOD isObscuredBy
   METHOD opaqueArea
   METHOD paint
   METHOD shape
   METHOD type

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsLineItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QGraphicsLineItem>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QGraphicsLineItem>
#endif

#include <QPen>

/*
QGraphicsLineItem ( QGraphicsItem * parent = 0 )
*/
void QGraphicsLineItem_new1 ()
{
  QGraphicsItem * par1 = ISNIL(1)? 0 : (QGraphicsItem *) _qt5xhb_itemGetPtr(1);
  QGraphicsLineItem * o = new QGraphicsLineItem ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QGraphicsLineItem ( const QLineF & line, QGraphicsItem * parent = 0 )
*/
void QGraphicsLineItem_new2 ()
{
  QLineF * par1 = (QLineF *) _qt5xhb_itemGetPtr(1);
  QGraphicsItem * par2 = ISNIL(2)? 0 : (QGraphicsItem *) _qt5xhb_itemGetPtr(2);
  QGraphicsLineItem * o = new QGraphicsLineItem ( *par1, par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QGraphicsLineItem ( qreal x1, qreal y1, qreal x2, qreal y2, QGraphicsItem * parent = 0 )
*/
void QGraphicsLineItem_new3 ()
{
  qreal par1 = hb_parnd(1);
  qreal par2 = hb_parnd(2);
  qreal par3 = hb_parnd(3);
  qreal par4 = hb_parnd(4);
  QGraphicsItem * par5 = ISNIL(5)? 0 : (QGraphicsItem *) _qt5xhb_itemGetPtr(5);
  QGraphicsLineItem * o = new QGraphicsLineItem ( par1, par2, par3, par4, par5 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QGraphicsLineItem ( QGraphicsItem * parent = 0 )
//[2]QGraphicsLineItem ( const QLineF & line, QGraphicsItem * parent = 0 )
//[3]QGraphicsLineItem ( qreal x1, qreal y1, qreal x2, qreal y2, QGraphicsItem * parent = 0 )

HB_FUNC_STATIC( QGRAPHICSLINEITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSITEM(1)||ISNIL(1)) )
  {
    QGraphicsLineItem_new1();
  }
  else if( ISBETWEEN(1,2) && ISQLINEF(1) && (ISQGRAPHICSITEM(2)||ISNIL(2)) )
  {
    QGraphicsLineItem_new2();
  }
  else if( ISBETWEEN(4,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISQGRAPHICSITEM(5)||ISNIL(5)) )
  {
    QGraphicsLineItem_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGRAPHICSLINEITEM_DELETE )
{
  QGraphicsLineItem * obj = (QGraphicsLineItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QLineF line () const
*/
HB_FUNC_STATIC( QGRAPHICSLINEITEM_LINE )
{
  QGraphicsLineItem * obj = (QGraphicsLineItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QLineF * ptr = new QLineF( obj->line (  ) );
    _qt5xhb_createReturnClass ( ptr, "QLINEF", true );
  }
}

/*
QPen pen () const
*/
HB_FUNC_STATIC( QGRAPHICSLINEITEM_PEN )
{
  QGraphicsLineItem * obj = (QGraphicsLineItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPen * ptr = new QPen( obj->pen (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPEN", true );
  }
}

/*
void setLine ( const QLineF & line )
*/
void QGraphicsLineItem_setLine1 ()
{
  QGraphicsLineItem * obj = (QGraphicsLineItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QLineF * par1 = (QLineF *) _qt5xhb_itemGetPtr(1);
    obj->setLine ( *par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLine ( qreal x1, qreal y1, qreal x2, qreal y2 )
*/
void QGraphicsLineItem_setLine2 ()
{
  QGraphicsLineItem * obj = (QGraphicsLineItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    qreal par4 = hb_parnd(4);
    obj->setLine ( par1, par2, par3, par4 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setLine ( const QLineF & line )
//[2]void setLine ( qreal x1, qreal y1, qreal x2, qreal y2 )

HB_FUNC_STATIC( QGRAPHICSLINEITEM_SETLINE )
{
  if( ISNUMPAR(1) && ISQLINEF(1) )
  {
    QGraphicsLineItem_setLine1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QGraphicsLineItem_setLine2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setPen ( const QPen & pen )
*/
HB_FUNC_STATIC( QGRAPHICSLINEITEM_SETPEN )
{
  QGraphicsLineItem * obj = (QGraphicsLineItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPEN(1) )
    {
      QPen * par1 = (QPen *) _qt5xhb_itemGetPtr(1);
      obj->setPen ( *par1 );
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
HB_FUNC_STATIC( QGRAPHICSLINEITEM_BOUNDINGRECT )
{
  QGraphicsLineItem * obj = (QGraphicsLineItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRectF * ptr = new QRectF( obj->boundingRect (  ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
virtual bool contains ( const QPointF & point ) const
*/
HB_FUNC_STATIC( QGRAPHICSLINEITEM_CONTAINS )
{
  QGraphicsLineItem * obj = (QGraphicsLineItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPOINTF(1) )
    {
      QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
      hb_retl( obj->contains ( *par1 ) );
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
HB_FUNC_STATIC( QGRAPHICSLINEITEM_ISOBSCUREDBY )
{
  QGraphicsLineItem * obj = (QGraphicsLineItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQGRAPHICSITEM(1) )
    {
      QGraphicsItem * par1 = (QGraphicsItem *) _qt5xhb_itemGetPtr(1);
      hb_retl( obj->isObscuredBy ( par1 ) );
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
HB_FUNC_STATIC( QGRAPHICSLINEITEM_OPAQUEAREA )
{
  QGraphicsLineItem * obj = (QGraphicsLineItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->opaqueArea (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSLINEITEM_PAINT )
{
  QGraphicsLineItem * obj = (QGraphicsLineItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPAINTER(1) && ISQSTYLEOPTIONGRAPHICSITEM(2) && (ISQWIDGET(3)||ISNIL(3)) )
    {
      QPainter * par1 = (QPainter *) _qt5xhb_itemGetPtr(1);
      const QStyleOptionGraphicsItem * par2 = (const QStyleOptionGraphicsItem *) _qt5xhb_itemGetPtr(2);
      QWidget * par3 = ISNIL(3)? 0 : (QWidget *) _qt5xhb_itemGetPtr(3);
      obj->paint ( par1, par2, par3 );
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
HB_FUNC_STATIC( QGRAPHICSLINEITEM_SHAPE )
{
  QGraphicsLineItem * obj = (QGraphicsLineItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->shape (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
virtual int type () const
*/
HB_FUNC_STATIC( QGRAPHICSLINEITEM_TYPE )
{
  QGraphicsLineItem * obj = (QGraphicsLineItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->type (  ) );
  }
}

#pragma ENDDUMP

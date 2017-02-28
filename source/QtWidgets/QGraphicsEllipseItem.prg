/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QPAINTERPATH
#endif

CLASS QGraphicsEllipseItem INHERIT QAbstractGraphicsShapeItem

   DATA class_id INIT Class_Id_QGraphicsEllipseItem
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD rect
   METHOD setRect1
   METHOD setRect2
   METHOD setRect
   METHOD setSpanAngle
   METHOD setStartAngle
   METHOD spanAngle
   METHOD startAngle
   METHOD boundingRect
   METHOD contains
   METHOD isObscuredBy
   METHOD opaqueArea
   METHOD paint
   METHOD shape
   METHOD type
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsEllipseItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QGraphicsEllipseItem>
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
#include <QGraphicsEllipseItem>
#endif

/*
QGraphicsEllipseItem ( QGraphicsItem * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSELLIPSEITEM_NEW1 )
{
  QGraphicsItem * par1 = ISNIL(1)? 0 : (QGraphicsItem *) _qt5xhb_itemGetPtr(1);
  QGraphicsEllipseItem * o = new QGraphicsEllipseItem ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QGraphicsEllipseItem ( const QRectF & rect, QGraphicsItem * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSELLIPSEITEM_NEW2 )
{
  QRectF * par1 = (QRectF *) _qt5xhb_itemGetPtr(1);
  QGraphicsItem * par2 = ISNIL(2)? 0 : (QGraphicsItem *) _qt5xhb_itemGetPtr(2);
  QGraphicsEllipseItem * o = new QGraphicsEllipseItem ( *par1, par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QGraphicsEllipseItem ( qreal x, qreal y, qreal width, qreal height, QGraphicsItem * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSELLIPSEITEM_NEW3 )
{
  qreal par1 = hb_parnd(1);
  qreal par2 = hb_parnd(2);
  qreal par3 = hb_parnd(3);
  qreal par4 = hb_parnd(4);
  QGraphicsItem * par5 = ISNIL(5)? 0 : (QGraphicsItem *) _qt5xhb_itemGetPtr(5);
  QGraphicsEllipseItem * o = new QGraphicsEllipseItem ( par1, par2, par3, par4, par5 );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QGraphicsEllipseItem ( QGraphicsItem * parent = 0 )
//[2]QGraphicsEllipseItem ( const QRectF & rect, QGraphicsItem * parent = 0 )
//[3]QGraphicsEllipseItem ( qreal x, qreal y, qreal width, qreal height, QGraphicsItem * parent = 0 )

HB_FUNC_STATIC( QGRAPHICSELLIPSEITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSITEM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QGRAPHICSELLIPSEITEM_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQRECTF(1) && (ISQGRAPHICSITEM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QGRAPHICSELLIPSEITEM_NEW2 );
  }
  else if( ISBETWEEN(4,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISQGRAPHICSITEM(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QGRAPHICSELLIPSEITEM_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGRAPHICSELLIPSEITEM_DELETE )
{
  QGraphicsEllipseItem * obj = (QGraphicsEllipseItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QRectF rect () const
*/
HB_FUNC_STATIC( QGRAPHICSELLIPSEITEM_RECT )
{
  QGraphicsEllipseItem * obj = (QGraphicsEllipseItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->rect (  ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
void setRect ( const QRectF & rect )
*/
HB_FUNC_STATIC( QGRAPHICSELLIPSEITEM_SETRECT1 )
{
  QGraphicsEllipseItem * obj = (QGraphicsEllipseItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qt5xhb_itemGetPtr(1);
    obj->setRect ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRect ( qreal x, qreal y, qreal width, qreal height )
*/
HB_FUNC_STATIC( QGRAPHICSELLIPSEITEM_SETRECT2 )
{
  QGraphicsEllipseItem * obj = (QGraphicsEllipseItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    qreal par4 = hb_parnd(4);
    obj->setRect ( par1, par2, par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setRect ( const QRectF & rect )
//[2]void setRect ( qreal x, qreal y, qreal width, qreal height )

HB_FUNC_STATIC( QGRAPHICSELLIPSEITEM_SETRECT )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSELLIPSEITEM_SETRECT1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QGRAPHICSELLIPSEITEM_SETRECT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setSpanAngle ( int angle )
*/
HB_FUNC_STATIC( QGRAPHICSELLIPSEITEM_SETSPANANGLE )
{
  QGraphicsEllipseItem * obj = (QGraphicsEllipseItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSpanAngle ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStartAngle ( int angle )
*/
HB_FUNC_STATIC( QGRAPHICSELLIPSEITEM_SETSTARTANGLE )
{
  QGraphicsEllipseItem * obj = (QGraphicsEllipseItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setStartAngle ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int spanAngle () const
*/
HB_FUNC_STATIC( QGRAPHICSELLIPSEITEM_SPANANGLE )
{
  QGraphicsEllipseItem * obj = (QGraphicsEllipseItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->spanAngle (  ) );
  }
}


/*
int startAngle () const
*/
HB_FUNC_STATIC( QGRAPHICSELLIPSEITEM_STARTANGLE )
{
  QGraphicsEllipseItem * obj = (QGraphicsEllipseItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->startAngle (  ) );
  }
}


/*
virtual QRectF boundingRect () const
*/
HB_FUNC_STATIC( QGRAPHICSELLIPSEITEM_BOUNDINGRECT )
{
  QGraphicsEllipseItem * obj = (QGraphicsEllipseItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->boundingRect (  ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
virtual bool contains ( const QPointF & point ) const
*/
HB_FUNC_STATIC( QGRAPHICSELLIPSEITEM_CONTAINS )
{
  QGraphicsEllipseItem * obj = (QGraphicsEllipseItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->contains ( *par1 ) );
  }
}


/*
virtual bool isObscuredBy ( const QGraphicsItem * item ) const
*/
HB_FUNC_STATIC( QGRAPHICSELLIPSEITEM_ISOBSCUREDBY )
{
  QGraphicsEllipseItem * obj = (QGraphicsEllipseItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGraphicsItem * par1 = (QGraphicsItem *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->isObscuredBy ( par1 ) );
  }
}


/*
virtual QPainterPath opaqueArea () const
*/
HB_FUNC_STATIC( QGRAPHICSELLIPSEITEM_OPAQUEAREA )
{
  QGraphicsEllipseItem * obj = (QGraphicsEllipseItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->opaqueArea (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}


/*
virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSELLIPSEITEM_PAINT )
{
  QGraphicsEllipseItem * obj = (QGraphicsEllipseItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainter * par1 = (QPainter *) _qt5xhb_itemGetPtr(1);
    QStyleOptionGraphicsItem * par2 = (QStyleOptionGraphicsItem *) _qt5xhb_itemGetPtr(2);
    QWidget * par3 = ISNIL(3)? 0 : (QWidget *) _qt5xhb_itemGetPtr(3);
    obj->paint ( par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QPainterPath shape () const
*/
HB_FUNC_STATIC( QGRAPHICSELLIPSEITEM_SHAPE )
{
  QGraphicsEllipseItem * obj = (QGraphicsEllipseItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->shape (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}


/*
virtual int type () const
*/
HB_FUNC_STATIC( QGRAPHICSELLIPSEITEM_TYPE )
{
  QGraphicsEllipseItem * obj = (QGraphicsEllipseItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->type (  ) );
  }
}



#pragma ENDDUMP

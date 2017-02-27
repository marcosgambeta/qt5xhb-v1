/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QPOLYGONF
REQUEST QRECTF
REQUEST QPAINTERPATH
#endif

CLASS QGraphicsPolygonItem INHERIT QAbstractGraphicsShapeItem

   DATA class_id INIT Class_Id_QGraphicsPolygonItem
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QGraphicsPolygonItem>
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
#include <QGraphicsPolygonItem>
#endif
#endif

/*
QGraphicsPolygonItem ( QGraphicsItem * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSPOLYGONITEM_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QGraphicsItem * par1 = ISNIL(1)? 0 : (QGraphicsItem *) _qt5xhb_itemGetPtr(1);
  QGraphicsPolygonItem * o = new QGraphicsPolygonItem ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QGraphicsPolygonItem *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QGraphicsPolygonItem ( const QPolygonF & polygon, QGraphicsItem * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSPOLYGONITEM_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QPolygonF * par1 = (QPolygonF *) _qt5xhb_itemGetPtr(1);
  QGraphicsItem * par2 = ISNIL(2)? 0 : (QGraphicsItem *) _qt5xhb_itemGetPtr(2);
  QGraphicsPolygonItem * o = new QGraphicsPolygonItem ( *par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QGraphicsPolygonItem *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QGraphicsPolygonItem ( QGraphicsItem * parent = 0 )
//[2]QGraphicsPolygonItem ( const QPolygonF & polygon, QGraphicsItem * parent = 0 )

HB_FUNC_STATIC( QGRAPHICSPOLYGONITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSITEM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QGRAPHICSPOLYGONITEM_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQPOLYGONF(1) && (ISQGRAPHICSITEM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QGRAPHICSPOLYGONITEM_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGRAPHICSPOLYGONITEM_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
Qt::FillRule fillRule () const
*/
HB_FUNC_STATIC( QGRAPHICSPOLYGONITEM_FILLRULE )
{
  QGraphicsPolygonItem * obj = (QGraphicsPolygonItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->fillRule (  ) );
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
    QPolygonF * ptr = new QPolygonF( obj->polygon (  ) );
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
    int par1 = hb_parni(1);
    obj->setFillRule (  (Qt::FillRule) par1 );
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
    QPolygonF * par1 = (QPolygonF *) _qt5xhb_itemGetPtr(1);
    obj->setPolygon ( *par1 );
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
    QRectF * ptr = new QRectF( obj->boundingRect (  ) );
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
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->contains ( *par1 ) );
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
    const QGraphicsItem * par1 = (const QGraphicsItem *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->isObscuredBy ( par1 ) );
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
    QPainterPath * ptr = new QPainterPath( obj->opaqueArea (  ) );
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
    QPainter * par1 = (QPainter *) _qt5xhb_itemGetPtr(1);
    const QStyleOptionGraphicsItem * par2 = (const QStyleOptionGraphicsItem *) _qt5xhb_itemGetPtr(2);
    QWidget * par3 = ISNIL(3)? 0 : (QWidget *) _qt5xhb_itemGetPtr(3);
    obj->paint ( par1, par2, par3 );
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
    QPainterPath * ptr = new QPainterPath( obj->shape (  ) );
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
    hb_retni( obj->type (  ) );
  }
}



#pragma ENDDUMP

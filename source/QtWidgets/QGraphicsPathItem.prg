/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QPAINTERPATH
REQUEST QRECTF
#endif

CLASS QGraphicsPathItem INHERIT QAbstractGraphicsShapeItem

   DATA class_id INIT Class_Id_QGraphicsPathItem
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QGraphicsPathItem>
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
#include <QGraphicsPathItem>
#endif
#endif

/*
QGraphicsPathItem ( QGraphicsItem * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSPATHITEM_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QGraphicsItem * par1 = ISNIL(1)? 0 : (QGraphicsItem *) _qtxhb_itemGetPtr(1);
  QGraphicsPathItem * o = new QGraphicsPathItem ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QGraphicsPathItem *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QGraphicsPathItem ( const QPainterPath & path, QGraphicsItem * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSPATHITEM_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QPainterPath * par1 = (QPainterPath *) _qtxhb_itemGetPtr(1);
  QGraphicsItem * par2 = ISNIL(2)? 0 : (QGraphicsItem *) _qtxhb_itemGetPtr(2);
  QGraphicsPathItem * o = new QGraphicsPathItem ( *par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QGraphicsPathItem *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QGraphicsPathItem ( QGraphicsItem * parent = 0 )
//[2]QGraphicsPathItem ( const QPainterPath & path, QGraphicsItem * parent = 0 )

HB_FUNC_STATIC( QGRAPHICSPATHITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSITEM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QGRAPHICSPATHITEM_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQPAINTERPATH(1) && (ISQGRAPHICSITEM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QGRAPHICSPATHITEM_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGRAPHICSPATHITEM_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
QPainterPath path () const
*/
HB_FUNC_STATIC( QGRAPHICSPATHITEM_PATH )
{
  QGraphicsPathItem * obj = (QGraphicsPathItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->path (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}


/*
void setPath ( const QPainterPath & path )
*/
HB_FUNC_STATIC( QGRAPHICSPATHITEM_SETPATH )
{
  QGraphicsPathItem * obj = (QGraphicsPathItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainterPath * par1 = (QPainterPath *) _qtxhb_itemGetPtr(1);
    obj->setPath ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QRectF boundingRect () const
*/
HB_FUNC_STATIC( QGRAPHICSPATHITEM_BOUNDINGRECT )
{
  QGraphicsPathItem * obj = (QGraphicsPathItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->boundingRect (  ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
virtual bool contains ( const QPointF & point ) const
*/
HB_FUNC_STATIC( QGRAPHICSPATHITEM_CONTAINS )
{
  QGraphicsPathItem * obj = (QGraphicsPathItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->contains ( *par1 ) );
  }
}


/*
virtual bool isObscuredBy ( const QGraphicsItem * item ) const
*/
HB_FUNC_STATIC( QGRAPHICSPATHITEM_ISOBSCUREDBY )
{
  QGraphicsPathItem * obj = (QGraphicsPathItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QGraphicsItem * par1 = (const QGraphicsItem *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->isObscuredBy ( par1 ) );
  }
}


/*
virtual QPainterPath opaqueArea () const
*/
HB_FUNC_STATIC( QGRAPHICSPATHITEM_OPAQUEAREA )
{
  QGraphicsPathItem * obj = (QGraphicsPathItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->opaqueArea (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}


/*
virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSPATHITEM_PAINT )
{
  QGraphicsPathItem * obj = (QGraphicsPathItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainter * par1 = (QPainter *) _qtxhb_itemGetPtr(1);
    const QStyleOptionGraphicsItem * par2 = (const QStyleOptionGraphicsItem *) _qtxhb_itemGetPtr(2);
    QWidget * par3 = ISNIL(3)? 0 : (QWidget *) _qtxhb_itemGetPtr(3);
    obj->paint ( par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QPainterPath shape () const
*/
HB_FUNC_STATIC( QGRAPHICSPATHITEM_SHAPE )
{
  QGraphicsPathItem * obj = (QGraphicsPathItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->shape (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}


/*
virtual int type () const
*/
HB_FUNC_STATIC( QGRAPHICSPATHITEM_TYPE )
{
  QGraphicsPathItem * obj = (QGraphicsPathItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->type (  ) );
  }
}



#pragma ENDDUMP

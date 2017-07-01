/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QFONT
REQUEST QRECTF
REQUEST QPAINTERPATH
#endif

CLASS QGraphicsSimpleTextItem INHERIT QAbstractGraphicsShapeItem

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD font
   METHOD setFont
   METHOD setText
   METHOD text
   METHOD boundingRect
   METHOD contains
   METHOD isObscuredBy
   METHOD opaqueArea
   METHOD paint
   METHOD shape
   METHOD type

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsSimpleTextItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QGraphicsSimpleTextItem>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QGraphicsSimpleTextItem>
#endif

#include <QFont>

/*
QGraphicsSimpleTextItem ( QGraphicsItem * parent = 0 )
*/
void QGraphicsSimpleTextItem_new1 ()
{
  QGraphicsItem * par1 = ISNIL(1)? 0 : (QGraphicsItem *) _qt5xhb_itemGetPtr(1);
  QGraphicsSimpleTextItem * o = new QGraphicsSimpleTextItem ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QGraphicsSimpleTextItem ( const QString & text, QGraphicsItem * parent = 0 )
*/
void QGraphicsSimpleTextItem_new2 ()
{
  QGraphicsItem * par2 = ISNIL(2)? 0 : (QGraphicsItem *) _qt5xhb_itemGetPtr(2);
  QGraphicsSimpleTextItem * o = new QGraphicsSimpleTextItem ( PQSTRING(1), par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QGraphicsSimpleTextItem ( QGraphicsItem * parent = 0 )
//[2]QGraphicsSimpleTextItem ( const QString & text, QGraphicsItem * parent = 0 )

HB_FUNC_STATIC( QGRAPHICSSIMPLETEXTITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSITEM(1)||ISNIL(1)) )
  {
    QGraphicsSimpleTextItem_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQGRAPHICSITEM(2)||ISNIL(2)) )
  {
    QGraphicsSimpleTextItem_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGRAPHICSSIMPLETEXTITEM_DELETE )
{
  QGraphicsSimpleTextItem * obj = (QGraphicsSimpleTextItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QFont font () const
*/
HB_FUNC_STATIC( QGRAPHICSSIMPLETEXTITEM_FONT )
{
  QGraphicsSimpleTextItem * obj = (QGraphicsSimpleTextItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QFont * ptr = new QFont( obj->font () );
    _qt5xhb_createReturnClass ( ptr, "QFONT", true );
  }
}

/*
void setFont ( const QFont & font )
*/
HB_FUNC_STATIC( QGRAPHICSSIMPLETEXTITEM_SETFONT )
{
  QGraphicsSimpleTextItem * obj = (QGraphicsSimpleTextItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQFONT(1) )
    {
      obj->setFont ( *PQFONT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setText ( const QString & text )
*/
HB_FUNC_STATIC( QGRAPHICSSIMPLETEXTITEM_SETTEXT )
{
  QGraphicsSimpleTextItem * obj = (QGraphicsSimpleTextItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setText ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString text () const
*/
HB_FUNC_STATIC( QGRAPHICSSIMPLETEXTITEM_TEXT )
{
  QGraphicsSimpleTextItem * obj = (QGraphicsSimpleTextItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->text () );
  }
}

/*
virtual QRectF boundingRect () const
*/
HB_FUNC_STATIC( QGRAPHICSSIMPLETEXTITEM_BOUNDINGRECT )
{
  QGraphicsSimpleTextItem * obj = (QGraphicsSimpleTextItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRectF * ptr = new QRectF( obj->boundingRect () );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
virtual bool contains ( const QPointF & point ) const
*/
HB_FUNC_STATIC( QGRAPHICSSIMPLETEXTITEM_CONTAINS )
{
  QGraphicsSimpleTextItem * obj = (QGraphicsSimpleTextItem *) _qt5xhb_itemGetPtrStackSelfItem();

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
HB_FUNC_STATIC( QGRAPHICSSIMPLETEXTITEM_ISOBSCUREDBY )
{
  QGraphicsSimpleTextItem * obj = (QGraphicsSimpleTextItem *) _qt5xhb_itemGetPtrStackSelfItem();

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
HB_FUNC_STATIC( QGRAPHICSSIMPLETEXTITEM_OPAQUEAREA )
{
  QGraphicsSimpleTextItem * obj = (QGraphicsSimpleTextItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->opaqueArea () );
    _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget )
*/
HB_FUNC_STATIC( QGRAPHICSSIMPLETEXTITEM_PAINT )
{
  QGraphicsSimpleTextItem * obj = (QGraphicsSimpleTextItem *) _qt5xhb_itemGetPtrStackSelfItem();

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
HB_FUNC_STATIC( QGRAPHICSSIMPLETEXTITEM_SHAPE )
{
  QGraphicsSimpleTextItem * obj = (QGraphicsSimpleTextItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->shape () );
    _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
virtual int type () const
*/
HB_FUNC_STATIC( QGRAPHICSSIMPLETEXTITEM_TYPE )
{
  QGraphicsSimpleTextItem * obj = (QGraphicsSimpleTextItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->type () );
  }
}

#pragma ENDDUMP

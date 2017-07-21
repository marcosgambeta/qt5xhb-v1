$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QPAINTERPATH
#endif

CLASS QGraphicsEllipseItem INHERIT QAbstractGraphicsShapeItem

   METHOD new
   METHOD delete
   METHOD rect
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

$destructor

#pragma BEGINDUMP

$includes

/*
QGraphicsEllipseItem ( QGraphicsItem * parent = 0 )
*/
void QGraphicsEllipseItem_new1 ()
{
  QGraphicsItem * par1 = ISNIL(1)? 0 : (QGraphicsItem *) _qt5xhb_itemGetPtr(1);
  QGraphicsEllipseItem * o = new QGraphicsEllipseItem ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QGraphicsEllipseItem ( const QRectF & rect, QGraphicsItem * parent = 0 )
*/
void QGraphicsEllipseItem_new2 ()
{
  QGraphicsItem * par2 = ISNIL(2)? 0 : (QGraphicsItem *) _qt5xhb_itemGetPtr(2);
  QGraphicsEllipseItem * o = new QGraphicsEllipseItem ( *PQRECTF(1), par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QGraphicsEllipseItem ( qreal x, qreal y, qreal width, qreal height, QGraphicsItem * parent = 0 )
*/
void QGraphicsEllipseItem_new3 ()
{
  QGraphicsItem * par5 = ISNIL(5)? 0 : (QGraphicsItem *) _qt5xhb_itemGetPtr(5);
  QGraphicsEllipseItem * o = new QGraphicsEllipseItem ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), par5 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QGraphicsEllipseItem ( QGraphicsItem * parent = 0 )
//[2]QGraphicsEllipseItem ( const QRectF & rect, QGraphicsItem * parent = 0 )
//[3]QGraphicsEllipseItem ( qreal x, qreal y, qreal width, qreal height, QGraphicsItem * parent = 0 )

HB_FUNC_STATIC( QGRAPHICSELLIPSEITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSITEM(1)||ISNIL(1)) )
  {
    QGraphicsEllipseItem_new1();
  }
  else if( ISBETWEEN(1,2) && ISQRECTF(1) && (ISQGRAPHICSITEM(2)||ISNIL(2)) )
  {
    QGraphicsEllipseItem_new2();
  }
  else if( ISBETWEEN(4,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISQGRAPHICSITEM(5)||ISNIL(5)) )
  {
    QGraphicsEllipseItem_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QRectF rect () const
*/
HB_FUNC_STATIC( QGRAPHICSELLIPSEITEM_RECT )
{
  QGraphicsEllipseItem * obj = (QGraphicsEllipseItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRectF * ptr = new QRectF( obj->rect () );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
void setRect ( const QRectF & rect )
*/
void QGraphicSEllipseItem_setRect1 ()
{
  QGraphicsEllipseItem * obj = (QGraphicsEllipseItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setRect ( *PQRECTF(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRect ( qreal x, qreal y, qreal width, qreal height )
*/
void QGraphicSEllipseItem_setRect2 ()
{
  QGraphicsEllipseItem * obj = (QGraphicsEllipseItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setRect ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setRect ( const QRectF & rect )
//[2]void setRect ( qreal x, qreal y, qreal width, qreal height )

HB_FUNC_STATIC( QGRAPHICSELLIPSEITEM_SETRECT )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QGraphicSEllipseItem_setRect1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QGraphicSEllipseItem_setRect2();
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
    if( ISNUM(1) )
    {
      obj->setSpanAngle ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUM(1) )
    {
      obj->setStartAngle ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    RINT( obj->spanAngle () );
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
    RINT( obj->startAngle () );
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
    QRectF * ptr = new QRectF( obj->boundingRect () );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
virtual bool contains ( const QPointF & point ) const
*/
$method=|bool|contains|const QPointF &

/*
virtual bool isObscuredBy ( const QGraphicsItem * item ) const
*/
HB_FUNC_STATIC( QGRAPHICSELLIPSEITEM_ISOBSCUREDBY )
{
  QGraphicsEllipseItem * obj = (QGraphicsEllipseItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQGRAPHICSITEM(1) )
    {
      QGraphicsItem * par1 = (QGraphicsItem *) _qt5xhb_itemGetPtr(1);
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
HB_FUNC_STATIC( QGRAPHICSELLIPSEITEM_OPAQUEAREA )
{
  QGraphicsEllipseItem * obj = (QGraphicsEllipseItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->opaqueArea () );
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
    if( ISQPAINTER(1) && ISQSTYLEOPTIONGRAPHICSITEM(2) && ISOPTQWIDGET(3) )
    {
      QStyleOptionGraphicsItem * par2 = (QStyleOptionGraphicsItem *) _qt5xhb_itemGetPtr(2);
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
HB_FUNC_STATIC( QGRAPHICSELLIPSEITEM_SHAPE )
{
  QGraphicsEllipseItem * obj = (QGraphicsEllipseItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->shape () );
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
    RINT( obj->type () );
  }
}

#pragma ENDDUMP

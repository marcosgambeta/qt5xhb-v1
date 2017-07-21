$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QPAINTERPATH
#endif

CLASS QGraphicsItemGroup INHERIT QGraphicsItem

   METHOD new
   METHOD delete
   METHOD addToGroup
   METHOD removeFromGroup
   METHOD boundingRect
   METHOD isObscuredBy
   METHOD opaqueArea
   METHOD paint
   METHOD type

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QGraphicsItemGroup ( QGraphicsItem * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSITEMGROUP_NEW )
{
  QGraphicsItem * par1 = ISNIL(1)? 0 : (QGraphicsItem *) _qt5xhb_itemGetPtr(1);
  QGraphicsItemGroup * o = new QGraphicsItemGroup ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
void addToGroup ( QGraphicsItem * item )
*/
HB_FUNC_STATIC( QGRAPHICSITEMGROUP_ADDTOGROUP )
{
  QGraphicsItemGroup * obj = (QGraphicsItemGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->addToGroup ( PQGRAPHICSITEM(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeFromGroup ( QGraphicsItem * item )
*/
HB_FUNC_STATIC( QGRAPHICSITEMGROUP_REMOVEFROMGROUP )
{
  QGraphicsItemGroup * obj = (QGraphicsItemGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->removeFromGroup ( PQGRAPHICSITEM(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QRectF boundingRect () const
*/
HB_FUNC_STATIC( QGRAPHICSITEMGROUP_BOUNDINGRECT )
{
  QGraphicsItemGroup * obj = (QGraphicsItemGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->boundingRect () );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
virtual bool isObscuredBy ( const QGraphicsItem * item ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEMGROUP_ISOBSCUREDBY )
{
  QGraphicsItemGroup * obj = (QGraphicsItemGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QGraphicsItem * par1 = (const QGraphicsItem *) _qt5xhb_itemGetPtr(1);
    RBOOL( obj->isObscuredBy ( par1 ) );
  }
}


/*
virtual QPainterPath opaqueArea () const
*/
HB_FUNC_STATIC( QGRAPHICSITEMGROUP_OPAQUEAREA )
{
  QGraphicsItemGroup * obj = (QGraphicsItemGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->opaqueArea () );
    _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}


/*
virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSITEMGROUP_PAINT )
{
  QGraphicsItemGroup * obj = (QGraphicsItemGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QStyleOptionGraphicsItem * par2 = (const QStyleOptionGraphicsItem *) _qt5xhb_itemGetPtr(2);
    obj->paint ( PQPAINTER(1), par2, OPQWIDGET(3,0) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual int type () const
*/
HB_FUNC_STATIC( QGRAPHICSITEMGROUP_TYPE )
{
  QGraphicsItemGroup * obj = (QGraphicsItemGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->type () );
  }
}



#pragma ENDDUMP

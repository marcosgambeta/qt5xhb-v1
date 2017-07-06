$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QPEN
REQUEST QPAINTERPATH
#endif

CLASS QAbstractGraphicsShapeItem INHERIT QGraphicsItem

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD brush
   METHOD setBrush
   METHOD pen
   METHOD setPen
   METHOD isObscuredBy
   METHOD opaqueArea

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QBrush>
#include <QPen>

$deleteMethod

/*
QBrush brush () const
*/
HB_FUNC_STATIC( QABSTRACTGRAPHICSSHAPEITEM_BRUSH )
{
  QAbstractGraphicsShapeItem * obj = (QAbstractGraphicsShapeItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QBrush * ptr = new QBrush( obj->brush () );
    _qt5xhb_createReturnClass ( ptr, "QBRUSH", true );
  }
}

/*
void setBrush ( const QBrush & brush )
*/
HB_FUNC_STATIC( QABSTRACTGRAPHICSSHAPEITEM_SETBRUSH )
{
  QAbstractGraphicsShapeItem * obj = (QAbstractGraphicsShapeItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBrush ( *PQBRUSH(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QPen pen () const
*/
HB_FUNC_STATIC( QABSTRACTGRAPHICSSHAPEITEM_PEN )
{
  QAbstractGraphicsShapeItem * obj = (QAbstractGraphicsShapeItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPen * ptr = new QPen( obj->pen () );
    _qt5xhb_createReturnClass ( ptr, "QPEN", true );
  }
}

/*
void setPen ( const QPen & pen )
*/
HB_FUNC_STATIC( QABSTRACTGRAPHICSSHAPEITEM_SETPEN )
{
  QAbstractGraphicsShapeItem * obj = (QAbstractGraphicsShapeItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPen ( *PQPEN(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isObscuredBy ( const QGraphicsItem * item ) const
*/
HB_FUNC_STATIC( QABSTRACTGRAPHICSSHAPEITEM_ISOBSCUREDBY )
{
  QAbstractGraphicsShapeItem * obj = (QAbstractGraphicsShapeItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QGraphicsItem * par1 = (const QGraphicsItem *) _qt5xhb_itemGetPtr(1);
    RBOOL( obj->isObscuredBy ( par1 ) );
  }
}


/*
QPainterPath opaqueArea () const
*/
HB_FUNC_STATIC( QABSTRACTGRAPHICSSHAPEITEM_OPAQUEAREA )
{
  QAbstractGraphicsShapeItem * obj = (QAbstractGraphicsShapeItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->opaqueArea () );
    _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}



#pragma ENDDUMP

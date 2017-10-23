/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

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

PROCEDURE destroyObject () CLASS QAbstractGraphicsShapeItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAbstractGraphicsShapeItem>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAbstractGraphicsShapeItem>
#endif

#include <QBrush>
#include <QPen>


HB_FUNC_STATIC( QABSTRACTGRAPHICSSHAPEITEM_DELETE )
{
  QAbstractGraphicsShapeItem * obj = (QAbstractGraphicsShapeItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
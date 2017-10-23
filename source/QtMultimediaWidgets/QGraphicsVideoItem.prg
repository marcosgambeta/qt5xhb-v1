/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIAOBJECT
REQUEST QPOINTF
REQUEST QSIZEF
REQUEST QRECTF
#endif

CLASS QGraphicsVideoItem INHERIT QGraphicsObject,QMediaBindableInterface

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD mediaObject
   METHOD aspectRatioMode
   METHOD setAspectRatioMode
   METHOD offset
   METHOD setOffset
   METHOD size
   METHOD setSize
   METHOD nativeSize
   METHOD boundingRect
   METHOD paint

   METHOD onNativeSizeChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsVideoItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QGraphicsVideoItem>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QGraphicsVideoItem>
#endif

/*
QGraphicsVideoItem(QGraphicsItem *parent = 0)
*/
HB_FUNC_STATIC( QGRAPHICSVIDEOITEM_NEW )
{
  QGraphicsItem * par1 = ISNIL(1)? 0 : (QGraphicsItem *) _qt5xhb_itemGetPtr(1);
  QGraphicsVideoItem * o = new QGraphicsVideoItem ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QGRAPHICSVIDEOITEM_DELETE )
{
  QGraphicsVideoItem * obj = (QGraphicsVideoItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QMediaObject *mediaObject() const
*/
HB_FUNC_STATIC( QGRAPHICSVIDEOITEM_MEDIAOBJECT )
{
  QGraphicsVideoItem * obj = (QGraphicsVideoItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaObject * ptr = obj->mediaObject ();
    _qt5xhb_createReturnClass ( ptr, "QMEDIAOBJECT" );
  }
}


/*
Qt::AspectRatioMode aspectRatioMode() const
*/
HB_FUNC_STATIC( QGRAPHICSVIDEOITEM_ASPECTRATIOMODE )
{
  QGraphicsVideoItem * obj = (QGraphicsVideoItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->aspectRatioMode () );
  }
}


/*
void setAspectRatioMode(Qt::AspectRatioMode mode)
*/
HB_FUNC_STATIC( QGRAPHICSVIDEOITEM_SETASPECTRATIOMODE )
{
  QGraphicsVideoItem * obj = (QGraphicsVideoItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAspectRatioMode ( (Qt::AspectRatioMode) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QPointF offset() const
*/
HB_FUNC_STATIC( QGRAPHICSVIDEOITEM_OFFSET )
{
  QGraphicsVideoItem * obj = (QGraphicsVideoItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->offset () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
void setOffset(const QPointF &offset)
*/
HB_FUNC_STATIC( QGRAPHICSVIDEOITEM_SETOFFSET )
{
  QGraphicsVideoItem * obj = (QGraphicsVideoItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setOffset ( *PQPOINTF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSizeF size() const
*/
HB_FUNC_STATIC( QGRAPHICSVIDEOITEM_SIZE )
{
  QGraphicsVideoItem * obj = (QGraphicsVideoItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->size () );
    _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}


/*
void setSize(const QSizeF &size)
*/
HB_FUNC_STATIC( QGRAPHICSVIDEOITEM_SETSIZE )
{
  QGraphicsVideoItem * obj = (QGraphicsVideoItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSize ( *PQSIZEF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSizeF nativeSize() const
*/
HB_FUNC_STATIC( QGRAPHICSVIDEOITEM_NATIVESIZE )
{
  QGraphicsVideoItem * obj = (QGraphicsVideoItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->nativeSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}


/*
QRectF boundingRect() const
*/
HB_FUNC_STATIC( QGRAPHICSVIDEOITEM_BOUNDINGRECT )
{
  QGraphicsVideoItem * obj = (QGraphicsVideoItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->boundingRect () );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
void paint(QPainter *painter, const QStyleOptionGraphicsItem *option, QWidget *widget = 0)
*/
HB_FUNC_STATIC( QGRAPHICSVIDEOITEM_PAINT )
{
  QGraphicsVideoItem * obj = (QGraphicsVideoItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QStyleOptionGraphicsItem * par2 = (const QStyleOptionGraphicsItem *) _qt5xhb_itemGetPtr(2);
    obj->paint ( PQPAINTER(1), par2, OPQWIDGET(3,0) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"


#ifndef QTXHB_NO_REQUESTS
REQUEST QMEDIAOBJECT
REQUEST QPOINTF
REQUEST QSIZEF
REQUEST QRECTF
#endif

CLASS QGraphicsVideoItem INHERIT QGraphicsObject,QMediaBindableInterface

   DATA class_id INIT Class_Id_QGraphicsVideoItem
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QGraphicsVideoItem>
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
#include <QGraphicsVideoItem>
#endif
#endif

/*
QGraphicsVideoItem(QGraphicsItem *parent = 0)
*/
HB_FUNC_STATIC( QGRAPHICSVIDEOITEM_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QGraphicsItem * par1 = ISNIL(1)? 0 : (QGraphicsItem *) _qtxhb_itemGetPtr(1);
  QGraphicsVideoItem * o = new QGraphicsVideoItem ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QGraphicsVideoItem *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QGRAPHICSVIDEOITEM_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
QMediaObject *mediaObject() const
*/
HB_FUNC_STATIC( QGRAPHICSVIDEOITEM_MEDIAOBJECT )
{
  QGraphicsVideoItem * obj = (QGraphicsVideoItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaObject * ptr = obj->mediaObject (  );
    _qt5xhb_createReturnClass ( ptr, "QMEDIAOBJECT" );
  }
}


/*
Qt::AspectRatioMode aspectRatioMode() const
*/
HB_FUNC_STATIC( QGRAPHICSVIDEOITEM_ASPECTRATIOMODE )
{
  QGraphicsVideoItem * obj = (QGraphicsVideoItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->aspectRatioMode (  ) );
  }
}


/*
void setAspectRatioMode(Qt::AspectRatioMode mode)
*/
HB_FUNC_STATIC( QGRAPHICSVIDEOITEM_SETASPECTRATIOMODE )
{
  QGraphicsVideoItem * obj = (QGraphicsVideoItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAspectRatioMode (  (Qt::AspectRatioMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QPointF offset() const
*/
HB_FUNC_STATIC( QGRAPHICSVIDEOITEM_OFFSET )
{
  QGraphicsVideoItem * obj = (QGraphicsVideoItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->offset (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
void setOffset(const QPointF &offset)
*/
HB_FUNC_STATIC( QGRAPHICSVIDEOITEM_SETOFFSET )
{
  QGraphicsVideoItem * obj = (QGraphicsVideoItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qtxhb_itemGetPtr(1);
    obj->setOffset ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSizeF size() const
*/
HB_FUNC_STATIC( QGRAPHICSVIDEOITEM_SIZE )
{
  QGraphicsVideoItem * obj = (QGraphicsVideoItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->size (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}


/*
void setSize(const QSizeF &size)
*/
HB_FUNC_STATIC( QGRAPHICSVIDEOITEM_SETSIZE )
{
  QGraphicsVideoItem * obj = (QGraphicsVideoItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSizeF * par1 = (QSizeF *) _qtxhb_itemGetPtr(1);
    obj->setSize ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSizeF nativeSize() const
*/
HB_FUNC_STATIC( QGRAPHICSVIDEOITEM_NATIVESIZE )
{
  QGraphicsVideoItem * obj = (QGraphicsVideoItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->nativeSize (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}


/*
QRectF boundingRect() const
*/
HB_FUNC_STATIC( QGRAPHICSVIDEOITEM_BOUNDINGRECT )
{
  QGraphicsVideoItem * obj = (QGraphicsVideoItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->boundingRect (  ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
void paint(QPainter *painter, const QStyleOptionGraphicsItem *option, QWidget *widget = 0)
*/
HB_FUNC_STATIC( QGRAPHICSVIDEOITEM_PAINT )
{
  QGraphicsVideoItem * obj = (QGraphicsVideoItem *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainter * par1 = (QPainter *) _qtxhb_itemGetPtr(1);
    const QStyleOptionGraphicsItem * par2 = (const QStyleOptionGraphicsItem *) _qtxhb_itemGetPtr(2);
    QWidget * par3 = ISNIL(3)? 0 : (QWidget *) _qtxhb_itemGetPtr(3);
    obj->paint ( par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP

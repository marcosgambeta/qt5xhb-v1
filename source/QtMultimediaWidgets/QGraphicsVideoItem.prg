/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIAOBJECT
REQUEST QPOINTF
REQUEST QRECTF
REQUEST QSIZEF
#endif

CLASS QGraphicsVideoItem INHERIT QGraphicsObject,QMediaBindableInterface

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

PROCEDURE destroyObject() CLASS QGraphicsVideoItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimediaWidgets/QGraphicsVideoItem>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtMultimediaWidgets/QGraphicsVideoItem>
#endif

/*
QGraphicsVideoItem( QGraphicsItem * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSVIDEOITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSITEM(1)||HB_ISNIL(1)) )
  {
    QGraphicsVideoItem * obj = new QGraphicsVideoItem( HB_ISNIL(1)? 0 : (QGraphicsItem *) Qt5xHb::itemGetPtr(1) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QGRAPHICSVIDEOITEM_DELETE )
{
  QGraphicsVideoItem * obj = (QGraphicsVideoItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QMediaObject * mediaObject() const
*/
HB_FUNC_STATIC( QGRAPHICSVIDEOITEM_MEDIAOBJECT )
{
  QGraphicsVideoItem * obj = (QGraphicsVideoItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QMediaObject * ptr = obj->mediaObject();
      Qt5xHb::createReturnQObjectClass(ptr, "QMEDIAOBJECT");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
Qt::AspectRatioMode aspectRatioMode() const
*/
HB_FUNC_STATIC( QGRAPHICSVIDEOITEM_ASPECTRATIOMODE )
{
  QGraphicsVideoItem * obj = (QGraphicsVideoItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->aspectRatioMode() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setAspectRatioMode( Qt::AspectRatioMode mode )
*/
HB_FUNC_STATIC( QGRAPHICSVIDEOITEM_SETASPECTRATIOMODE )
{
  QGraphicsVideoItem * obj = (QGraphicsVideoItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setAspectRatioMode( (Qt::AspectRatioMode) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QPointF offset() const
*/
HB_FUNC_STATIC( QGRAPHICSVIDEOITEM_OFFSET )
{
  QGraphicsVideoItem * obj = (QGraphicsVideoItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPointF * ptr = new QPointF( obj->offset() );
      Qt5xHb::createReturnClass(ptr, "QPOINTF", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setOffset( const QPointF & offset )
*/
HB_FUNC_STATIC( QGRAPHICSVIDEOITEM_SETOFFSET )
{
  QGraphicsVideoItem * obj = (QGraphicsVideoItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPOINTF(1) )
    {
#endif
      obj->setOffset( *PQPOINTF(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QSizeF size() const
*/
HB_FUNC_STATIC( QGRAPHICSVIDEOITEM_SIZE )
{
  QGraphicsVideoItem * obj = (QGraphicsVideoItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSizeF * ptr = new QSizeF( obj->size() );
      Qt5xHb::createReturnClass(ptr, "QSIZEF", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setSize( const QSizeF & size )
*/
HB_FUNC_STATIC( QGRAPHICSVIDEOITEM_SETSIZE )
{
  QGraphicsVideoItem * obj = (QGraphicsVideoItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSIZEF(1) )
    {
#endif
      obj->setSize( *PQSIZEF(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QSizeF nativeSize() const
*/
HB_FUNC_STATIC( QGRAPHICSVIDEOITEM_NATIVESIZE )
{
  QGraphicsVideoItem * obj = (QGraphicsVideoItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSizeF * ptr = new QSizeF( obj->nativeSize() );
      Qt5xHb::createReturnClass(ptr, "QSIZEF", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QRectF boundingRect() const
*/
HB_FUNC_STATIC( QGRAPHICSVIDEOITEM_BOUNDINGRECT )
{
  QGraphicsVideoItem * obj = (QGraphicsVideoItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QRectF * ptr = new QRectF( obj->boundingRect() );
      Qt5xHb::createReturnClass(ptr, "QRECTF", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void paint( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSVIDEOITEM_PAINT )
{
  QGraphicsVideoItem * obj = (QGraphicsVideoItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && ISQPAINTER(1) && ISQSTYLEOPTIONGRAPHICSITEM(2) && (ISQWIDGET(3)||HB_ISNIL(3)) )
    {
#endif
      obj->paint( PQPAINTER(1), PQSTYLEOPTIONGRAPHICSITEM(2), OPQWIDGET(3,0) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

void QGraphicsVideoItemSlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( QGRAPHICSVIDEOITEM_ONNATIVESIZECHANGED )
{
  QGraphicsVideoItemSlots_connect_signal("nativeSizeChanged(QSizeF)", "nativeSizeChanged(QSizeF)");
}

#pragma ENDDUMP

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QSVGRENDERER
REQUEST QRECTF
#endif

CLASS QGraphicsSvgItem INHERIT QGraphicsObject

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD elementId
   METHOD maximumCacheSize
   METHOD renderer
   METHOD setElementId
   METHOD setMaximumCacheSize
   METHOD setSharedRenderer
   METHOD boundingRect
   METHOD paint
   METHOD type

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsSvgItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QGraphicsSvgItem>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QGraphicsSvgItem>
#endif

/*
QGraphicsSvgItem ( QGraphicsItem * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSSVGITEM_NEW1 )
{
  QGraphicsItem * par1 = ISNIL(1)? 0 : (QGraphicsItem *) _qt5xhb_itemGetPtr(1);
  QGraphicsSvgItem * o = new QGraphicsSvgItem ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QGraphicsSvgItem ( const QString & fileName, QGraphicsItem * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSSVGITEM_NEW2 )
{
  QGraphicsItem * par2 = ISNIL(2)? 0 : (QGraphicsItem *) _qt5xhb_itemGetPtr(2);
  QGraphicsSvgItem * o = new QGraphicsSvgItem ( PQSTRING(1), par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QGraphicsSvgItem ( QGraphicsItem * parent = 0 )
//[2]QGraphicsSvgItem ( const QString & fileName, QGraphicsItem * parent = 0 )

HB_FUNC_STATIC( QGRAPHICSSVGITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSITEM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QGRAPHICSSVGITEM_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQGRAPHICSITEM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QGRAPHICSSVGITEM_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGRAPHICSSVGITEM_DELETE )
{
  QGraphicsSvgItem * obj = (QGraphicsSvgItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString elementId () const
*/
HB_FUNC_STATIC( QGRAPHICSSVGITEM_ELEMENTID )
{
  QGraphicsSvgItem * obj = (QGraphicsSvgItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->elementId () );
  }
}


/*
QSize maximumCacheSize () const
*/
HB_FUNC_STATIC( QGRAPHICSSVGITEM_MAXIMUMCACHESIZE )
{
  QGraphicsSvgItem * obj = (QGraphicsSvgItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->maximumCacheSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
QSvgRenderer * renderer () const
*/
HB_FUNC_STATIC( QGRAPHICSSVGITEM_RENDERER )
{
  QGraphicsSvgItem * obj = (QGraphicsSvgItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSvgRenderer * ptr = obj->renderer ();
    _qt5xhb_createReturnClass ( ptr, "QSVGRENDERER" );
  }
}


/*
void setElementId ( const QString & id )
*/
HB_FUNC_STATIC( QGRAPHICSSVGITEM_SETELEMENTID )
{
  QGraphicsSvgItem * obj = (QGraphicsSvgItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setElementId ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMaximumCacheSize ( const QSize & size )
*/
HB_FUNC_STATIC( QGRAPHICSSVGITEM_SETMAXIMUMCACHESIZE )
{
  QGraphicsSvgItem * obj = (QGraphicsSvgItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMaximumCacheSize ( *PQSIZE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSharedRenderer ( QSvgRenderer * renderer )
*/
HB_FUNC_STATIC( QGRAPHICSSVGITEM_SETSHAREDRENDERER )
{
  QGraphicsSvgItem * obj = (QGraphicsSvgItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSvgRenderer * par1 = (QSvgRenderer *) _qt5xhb_itemGetPtr(1);
    obj->setSharedRenderer ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QRectF boundingRect () const
*/
HB_FUNC_STATIC( QGRAPHICSSVGITEM_BOUNDINGRECT )
{
  QGraphicsSvgItem * obj = (QGraphicsSvgItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->boundingRect () );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSSVGITEM_PAINT )
{
  QGraphicsSvgItem * obj = (QGraphicsSvgItem *) _qt5xhb_itemGetPtrStackSelfItem();
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
HB_FUNC_STATIC( QGRAPHICSSVGITEM_TYPE )
{
  QGraphicsSvgItem * obj = (QGraphicsSvgItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->type () );
  }
}



#pragma ENDDUMP

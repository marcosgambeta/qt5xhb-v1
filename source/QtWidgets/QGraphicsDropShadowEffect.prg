/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCOLOR
REQUEST QPOINTF
REQUEST QRECTF
#endif

CLASS QGraphicsDropShadowEffect INHERIT QGraphicsEffect

   METHOD new
   METHOD delete
   METHOD blurRadius
   METHOD color
   METHOD offset
   METHOD xOffset
   METHOD yOffset
   METHOD boundingRectFor
   METHOD setBlurRadius
   METHOD setColor
   METHOD setOffset
   METHOD setXOffset
   METHOD setYOffset

   METHOD onBlurRadiusChanged
   METHOD onColorChanged
   METHOD onOffsetChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsDropShadowEffect
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QGraphicsDropShadowEffect>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QGraphicsDropShadowEffect>
#endif

/*
QGraphicsDropShadowEffect ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSDROPSHADOWEFFECT_NEW )
{
  QGraphicsDropShadowEffect * o = new QGraphicsDropShadowEffect ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QGRAPHICSDROPSHADOWEFFECT_DELETE )
{
  QGraphicsDropShadowEffect * obj = (QGraphicsDropShadowEffect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
qreal blurRadius () const
*/
HB_FUNC_STATIC( QGRAPHICSDROPSHADOWEFFECT_BLURRADIUS )
{
  QGraphicsDropShadowEffect * obj = (QGraphicsDropShadowEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->blurRadius () );
  }
}


/*
QColor color () const
*/
HB_FUNC_STATIC( QGRAPHICSDROPSHADOWEFFECT_COLOR )
{
  QGraphicsDropShadowEffect * obj = (QGraphicsDropShadowEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor * ptr = new QColor( obj->color () );
    _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}


/*
QPointF offset () const
*/
HB_FUNC_STATIC( QGRAPHICSDROPSHADOWEFFECT_OFFSET )
{
  QGraphicsDropShadowEffect * obj = (QGraphicsDropShadowEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->offset () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
qreal xOffset () const
*/
HB_FUNC_STATIC( QGRAPHICSDROPSHADOWEFFECT_XOFFSET )
{
  QGraphicsDropShadowEffect * obj = (QGraphicsDropShadowEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->xOffset () );
  }
}


/*
qreal yOffset () const
*/
HB_FUNC_STATIC( QGRAPHICSDROPSHADOWEFFECT_YOFFSET )
{
  QGraphicsDropShadowEffect * obj = (QGraphicsDropShadowEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->yOffset () );
  }
}


/*
virtual QRectF boundingRectFor ( const QRectF & rect ) const
*/
HB_FUNC_STATIC( QGRAPHICSDROPSHADOWEFFECT_BOUNDINGRECTFOR )
{
  QGraphicsDropShadowEffect * obj = (QGraphicsDropShadowEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->boundingRectFor ( *PQRECTF(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
void setBlurRadius ( qreal blurRadius )
*/
HB_FUNC_STATIC( QGRAPHICSDROPSHADOWEFFECT_SETBLURRADIUS )
{
  QGraphicsDropShadowEffect * obj = (QGraphicsDropShadowEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBlurRadius ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setColor ( const QColor & color )
*/
HB_FUNC_STATIC( QGRAPHICSDROPSHADOWEFFECT_SETCOLOR )
{
  QGraphicsDropShadowEffect * obj = (QGraphicsDropShadowEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor par1 = ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1));
    obj->setColor ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOffset ( const QPointF & ofs )
*/
void QGraphicsDropShadowEffect_setOffset1 ()
{
  QGraphicsDropShadowEffect * obj = (QGraphicsDropShadowEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setOffset ( *PQPOINTF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOffset ( qreal dx, qreal dy )
*/
void QGraphicsDropShadowEffect_setOffset2 ()
{
  QGraphicsDropShadowEffect * obj = (QGraphicsDropShadowEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setOffset ( PQREAL(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOffset ( qreal d )
*/
void QGraphicsDropShadowEffect_setOffset3 ()
{
  QGraphicsDropShadowEffect * obj = (QGraphicsDropShadowEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setOffset ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setOffset ( const QPointF & ofs )
//[2]void setOffset ( qreal dx, qreal dy )
//[3]void setOffset ( qreal d )

HB_FUNC_STATIC( QGRAPHICSDROPSHADOWEFFECT_SETOFFSET )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QGraphicsDropShadowEffect_setOffset1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsDropShadowEffect_setOffset2();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QGraphicsDropShadowEffect_setOffset3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setXOffset ( qreal dx )
*/
HB_FUNC_STATIC( QGRAPHICSDROPSHADOWEFFECT_SETXOFFSET )
{
  QGraphicsDropShadowEffect * obj = (QGraphicsDropShadowEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setXOffset ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setYOffset ( qreal dy )
*/
HB_FUNC_STATIC( QGRAPHICSDROPSHADOWEFFECT_SETYOFFSET )
{
  QGraphicsDropShadowEffect * obj = (QGraphicsDropShadowEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setYOffset ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP

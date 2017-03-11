/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCOLOR
REQUEST QPOINTF
REQUEST QRECTF
#endif

CLASS QGraphicsDropShadowEffect INHERIT QGraphicsEffect

   DATA class_id INIT Class_Id_QGraphicsDropShadowEffect
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

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
   METHOD setOffset1
   METHOD setOffset2
   METHOD setOffset3
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
#include <QGraphicsDropShadowEffect>
#endif

/*
QGraphicsDropShadowEffect ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSDROPSHADOWEFFECT_NEW )
{
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QGraphicsDropShadowEffect * o = new QGraphicsDropShadowEffect ( par1 );
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
    hb_retnd( obj->blurRadius (  ) );
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
    QColor * ptr = new QColor( obj->color (  ) );
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
    QPointF * ptr = new QPointF( obj->offset (  ) );
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
    hb_retnd( obj->xOffset (  ) );
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
    hb_retnd( obj->yOffset (  ) );
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
    QRectF * par1 = (QRectF *) _qt5xhb_itemGetPtr(1);
    QRectF * ptr = new QRectF( obj->boundingRectFor ( *par1 ) );
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
    qreal par1 = hb_parnd(1);
    obj->setBlurRadius ( par1 );
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
HB_FUNC_STATIC( QGRAPHICSDROPSHADOWEFFECT_SETOFFSET1 )
{
  QGraphicsDropShadowEffect * obj = (QGraphicsDropShadowEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    obj->setOffset ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOffset ( qreal dx, qreal dy )
*/
HB_FUNC_STATIC( QGRAPHICSDROPSHADOWEFFECT_SETOFFSET2 )
{
  QGraphicsDropShadowEffect * obj = (QGraphicsDropShadowEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    obj->setOffset ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOffset ( qreal d )
*/
HB_FUNC_STATIC( QGRAPHICSDROPSHADOWEFFECT_SETOFFSET3 )
{
  QGraphicsDropShadowEffect * obj = (QGraphicsDropShadowEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setOffset ( par1 );
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
    HB_FUNC_EXEC( QGRAPHICSDROPSHADOWEFFECT_SETOFFSET1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QGRAPHICSDROPSHADOWEFFECT_SETOFFSET2 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSDROPSHADOWEFFECT_SETOFFSET3 );
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
    qreal par1 = hb_parnd(1);
    obj->setXOffset ( par1 );
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
    qreal par1 = hb_parnd(1);
    obj->setYOffset ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP

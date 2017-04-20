/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QCOLOR
#endif

CLASS QPen

   DATA pointer
   DATA class_id INIT Class_Id_QPen
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new
   METHOD delete
   METHOD brush
   METHOD capStyle
   METHOD color
   METHOD dashOffset
   METHOD isCosmetic
   METHOD isSolid
   METHOD joinStyle
   METHOD miterLimit
   METHOD setBrush
   METHOD setCapStyle
   METHOD setColor
   METHOD setCosmetic
   METHOD setDashOffset
   METHOD setJoinStyle
   METHOD setMiterLimit
   METHOD setStyle
   METHOD setWidth
   METHOD setWidthF
   METHOD style
   METHOD width
   METHOD widthF

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPen
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QPen>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QPen>
#endif

/*
QPen ()
*/
HB_FUNC_STATIC( QPEN_NEW1 )
{
  QPen * o = new QPen (  );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QPen ( Qt::PenStyle style )
*/
HB_FUNC_STATIC( QPEN_NEW2 )
{
  int par1 = hb_parni(1);
  QPen * o = new QPen (  (Qt::PenStyle) par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QPen ( const QColor & color )
*/
HB_FUNC_STATIC( QPEN_NEW3 )
{
  QColor par1 = ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1));
  QPen * o = new QPen ( par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QPen ( const QBrush & brush, qreal width, Qt::PenStyle style = Qt::SolidLine, Qt::PenCapStyle cap = Qt::SquareCap, Qt::PenJoinStyle join = Qt::BevelJoin )
*/
HB_FUNC_STATIC( QPEN_NEW4 )
{
  QBrush * par1 = (QBrush *) _qt5xhb_itemGetPtr(1);
  qreal par2 = hb_parnd(2);
  int par3 = ISNIL(3)? (int) Qt::SolidLine : hb_parni(3);
  int par4 = ISNIL(4)? (int) Qt::SquareCap : hb_parni(4);
  int par5 = ISNIL(5)? (int) Qt::BevelJoin : hb_parni(5);
  QPen * o = new QPen ( *par1, par2,  (Qt::PenStyle) par3,  (Qt::PenCapStyle) par4,  (Qt::PenJoinStyle) par5 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QPen ( const QPen & pen )
*/
HB_FUNC_STATIC( QPEN_NEW5 )
{
  QPen * par1 = (QPen *) _qt5xhb_itemGetPtr(1);
  QPen * o = new QPen ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}


//[1]QPen ()
//[2]QPen ( Qt::PenStyle style )
//[3]QPen ( const QColor & color )
//[4]QPen ( const QBrush & brush, qreal width, Qt::PenStyle style = Qt::SolidLine, Qt::PenCapStyle cap = Qt::SquareCap, Qt::PenJoinStyle join = Qt::BevelJoin )
//[5]QPen ( const QPen & pen )

HB_FUNC_STATIC( QPEN_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QPEN_NEW1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QPEN_NEW2 );
  }
  else if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
  {
    HB_FUNC_EXEC( QPEN_NEW3 );
  }
  else if( ISBETWEEN(2,5) && ISQBRUSH(1) && ISNUM(2) && ISOPTNUM(3) && ISOPTNUM(4) && ISOPTNUM(5) )
  {
    HB_FUNC_EXEC( QPEN_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQPEN(1) )
  {
    HB_FUNC_EXEC( QPEN_NEW5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPEN_DELETE )
{
  QPen * obj = (QPen *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC_STATIC( QPEN_BRUSH )
{
  QPen * obj = (QPen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QBrush * ptr = new QBrush( obj->brush (  ) );
    _qt5xhb_createReturnClass ( ptr, "QBRUSH", true );
  }
}


/*
Qt::PenCapStyle capStyle () const
*/
HB_FUNC_STATIC( QPEN_CAPSTYLE )
{
  QPen * obj = (QPen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->capStyle (  ) );
  }
}


/*
QColor color () const
*/
HB_FUNC_STATIC( QPEN_COLOR )
{
  QPen * obj = (QPen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor * ptr = new QColor( obj->color (  ) );
    _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}


/*
qreal dashOffset () const
*/
HB_FUNC_STATIC( QPEN_DASHOFFSET )
{
  QPen * obj = (QPen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->dashOffset (  ) );
  }
}



/*
bool isCosmetic () const
*/
HB_FUNC_STATIC( QPEN_ISCOSMETIC )
{
  QPen * obj = (QPen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isCosmetic (  ) );
  }
}


/*
bool isSolid () const
*/
HB_FUNC_STATIC( QPEN_ISSOLID )
{
  QPen * obj = (QPen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isSolid (  ) );
  }
}


/*
Qt::PenJoinStyle joinStyle () const
*/
HB_FUNC_STATIC( QPEN_JOINSTYLE )
{
  QPen * obj = (QPen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->joinStyle (  ) );
  }
}


/*
qreal miterLimit () const
*/
HB_FUNC_STATIC( QPEN_MITERLIMIT )
{
  QPen * obj = (QPen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->miterLimit (  ) );
  }
}


/*
void setBrush ( const QBrush & brush )
*/
HB_FUNC_STATIC( QPEN_SETBRUSH )
{
  QPen * obj = (QPen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QBrush * par1 = (QBrush *) _qt5xhb_itemGetPtr(1);
    obj->setBrush ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCapStyle ( Qt::PenCapStyle style )
*/
HB_FUNC_STATIC( QPEN_SETCAPSTYLE )
{
  QPen * obj = (QPen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setCapStyle (  (Qt::PenCapStyle) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setColor ( const QColor & color )
*/
HB_FUNC_STATIC( QPEN_SETCOLOR )
{
  QPen * obj = (QPen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor par1 = ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1));
    obj->setColor ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCosmetic ( bool cosmetic )
*/
HB_FUNC_STATIC( QPEN_SETCOSMETIC )
{
  QPen * obj = (QPen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCosmetic ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDashOffset ( qreal offset )
*/
HB_FUNC_STATIC( QPEN_SETDASHOFFSET )
{
  QPen * obj = (QPen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setDashOffset ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void setJoinStyle ( Qt::PenJoinStyle style )
*/
HB_FUNC_STATIC( QPEN_SETJOINSTYLE )
{
  QPen * obj = (QPen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setJoinStyle (  (Qt::PenJoinStyle) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMiterLimit ( qreal limit )
*/
HB_FUNC_STATIC( QPEN_SETMITERLIMIT )
{
  QPen * obj = (QPen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setMiterLimit ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStyle ( Qt::PenStyle style )
*/
HB_FUNC_STATIC( QPEN_SETSTYLE )
{
  QPen * obj = (QPen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setStyle (  (Qt::PenStyle) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWidth ( int width )
*/
HB_FUNC_STATIC( QPEN_SETWIDTH )
{
  QPen * obj = (QPen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setWidth ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWidthF ( qreal width )
*/
HB_FUNC_STATIC( QPEN_SETWIDTHF )
{
  QPen * obj = (QPen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setWidthF ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Qt::PenStyle style () const
*/
HB_FUNC_STATIC( QPEN_STYLE )
{
  QPen * obj = (QPen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->style (  ) );
  }
}


/*
int width () const
*/
HB_FUNC_STATIC( QPEN_WIDTH )
{
  QPen * obj = (QPen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->width (  ) );
  }
}


/*
qreal widthF () const
*/
HB_FUNC_STATIC( QPEN_WIDTHF )
{
  QPen * obj = (QPen *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->widthF (  ) );
  }
}



HB_FUNC_STATIC( QPEN_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QPEN_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QPEN_NEWFROM );
}

HB_FUNC_STATIC( QPEN_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QPEN_NEWFROM );
}

HB_FUNC_STATIC( QPEN_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QPEN_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP

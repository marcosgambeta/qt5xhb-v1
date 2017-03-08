/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QPOINTF
REQUEST QPOLYGONF
#endif

CLASS QPainterPath

   DATA pointer
   DATA class_id INIT Class_Id_QPainterPath
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD addEllipse1
   METHOD addEllipse2
   METHOD addEllipse3
   METHOD addEllipse
   METHOD addPath
   METHOD addPolygon
   METHOD addRect1
   METHOD addRect2
   METHOD addRect
   METHOD addRegion
   METHOD addRoundedRect1
   METHOD addRoundedRect2
   METHOD addRoundedRect
   METHOD addText1
   METHOD addText2
   METHOD addText
   METHOD angleAtPercent
   METHOD arcMoveTo1
   METHOD arcMoveTo2
   METHOD arcMoveTo
   METHOD arcTo1
   METHOD arcTo2
   METHOD arcTo
   METHOD boundingRect
   METHOD closeSubpath
   METHOD connectPath
   METHOD contains1
   METHOD contains2
   METHOD contains3
   METHOD contains
   METHOD controlPointRect
   METHOD cubicTo1
   METHOD cubicTo2
   METHOD cubicTo
   METHOD currentPosition
   METHOD elementCount
   METHOD fillRule
   METHOD intersected
   METHOD intersects1
   METHOD intersects2
   METHOD intersects
   METHOD isEmpty
   METHOD length
   METHOD lineTo1
   METHOD lineTo2
   METHOD lineTo
   METHOD moveTo1
   METHOD moveTo2
   METHOD moveTo
   METHOD percentAtLength
   METHOD pointAtPercent
   METHOD quadTo1
   METHOD quadTo2
   METHOD quadTo
   METHOD setElementPositionAt
   METHOD setFillRule
   METHOD simplified
   METHOD slopeAtPercent
   METHOD subtracted
   METHOD swap
   METHOD toFillPolygon1
   METHOD toFillPolygon
   METHOD toReversed
   METHOD translate1
   METHOD translate2
   METHOD translate
   METHOD translated1
   METHOD translated2
   METHOD translated
   METHOD united
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPainterPath
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QPainterPath>
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
#include <QPainterPath>
#endif

/*
QPainterPath ()
*/
HB_FUNC_STATIC( QPAINTERPATH_NEW1 )
{
  QPainterPath * o = new QPainterPath (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPainterPath *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}

/*
QPainterPath ( const QPointF & startPoint )
*/
HB_FUNC_STATIC( QPAINTERPATH_NEW2 )
{
  QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
  QPainterPath * o = new QPainterPath ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPainterPath *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}

/*
QPainterPath ( const QPainterPath & path )
*/
HB_FUNC_STATIC( QPAINTERPATH_NEW3 )
{
  QPainterPath * par1 = (QPainterPath *) _qt5xhb_itemGetPtr(1);
  QPainterPath * o = new QPainterPath ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPainterPath *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QPainterPath ()
//[2]QPainterPath ( const QPointF & startPoint )
//[3]QPainterPath ( const QPainterPath & path )

HB_FUNC_STATIC( QPAINTERPATH_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPAINTERPATH_DELETE )
{
  QPainterPath * obj = (QPainterPath *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void addEllipse ( const QRectF & boundingRectangle )
*/
HB_FUNC_STATIC( QPAINTERPATH_ADDELLIPSE1 )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qt5xhb_itemGetPtr(1);
    obj->addEllipse ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addEllipse ( qreal x, qreal y, qreal width, qreal height )
*/
HB_FUNC_STATIC( QPAINTERPATH_ADDELLIPSE2 )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    qreal par4 = hb_parnd(4);
    obj->addEllipse ( par1, par2, par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addEllipse ( const QPointF & center, qreal rx, qreal ry )
*/
HB_FUNC_STATIC( QPAINTERPATH_ADDELLIPSE3 )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    obj->addEllipse ( *par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void addEllipse ( const QRectF & boundingRectangle )
//[2]void addEllipse ( qreal x, qreal y, qreal width, qreal height )
//[3]void addEllipse ( const QPointF & center, qreal rx, qreal ry )

HB_FUNC_STATIC( QPAINTERPATH_ADDELLIPSE )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_ADDELLIPSE1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_ADDELLIPSE2 );
  }
  else if( ISNUMPAR(3) && ISQPOINTF(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_ADDELLIPSE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void addPath ( const QPainterPath & path )
*/
HB_FUNC_STATIC( QPAINTERPATH_ADDPATH )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainterPath * par1 = (QPainterPath *) _qt5xhb_itemGetPtr(1);
    obj->addPath ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addPolygon ( const QPolygonF & polygon )
*/
HB_FUNC_STATIC( QPAINTERPATH_ADDPOLYGON )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPolygonF * par1 = (QPolygonF *) _qt5xhb_itemGetPtr(1);
    obj->addPolygon ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addRect ( const QRectF & rectangle )
*/
HB_FUNC_STATIC( QPAINTERPATH_ADDRECT1 )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qt5xhb_itemGetPtr(1);
    obj->addRect ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addRect ( qreal x, qreal y, qreal width, qreal height )
*/
HB_FUNC_STATIC( QPAINTERPATH_ADDRECT2 )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    qreal par4 = hb_parnd(4);
    obj->addRect ( par1, par2, par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void addRect ( const QRectF & rectangle )
//[2]void addRect ( qreal x, qreal y, qreal width, qreal height )

HB_FUNC_STATIC( QPAINTERPATH_ADDRECT )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_ADDRECT1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_ADDRECT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void addRegion ( const QRegion & region )
*/
HB_FUNC_STATIC( QPAINTERPATH_ADDREGION )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRegion * par1 = (QRegion *) _qt5xhb_itemGetPtr(1);
    obj->addRegion ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addRoundedRect ( const QRectF & rect, qreal xRadius, qreal yRadius, Qt::SizeMode mode = Qt::AbsoluteSize )
*/
HB_FUNC_STATIC( QPAINTERPATH_ADDROUNDEDRECT1 )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qt5xhb_itemGetPtr(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    int par4 = ISNIL(4)? (int) Qt::AbsoluteSize : hb_parni(4);
    obj->addRoundedRect ( *par1, par2, par3,  (Qt::SizeMode) par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addRoundedRect ( qreal x, qreal y, qreal w, qreal h, qreal xRadius, qreal yRadius, Qt::SizeMode mode = Qt::AbsoluteSize )
*/
HB_FUNC_STATIC( QPAINTERPATH_ADDROUNDEDRECT2 )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    qreal par4 = hb_parnd(4);
    qreal par5 = hb_parnd(5);
    qreal par6 = hb_parnd(6);
    int par7 = ISNIL(7)? (int) Qt::AbsoluteSize : hb_parni(7);
    obj->addRoundedRect ( par1, par2, par3, par4, par5, par6,  (Qt::SizeMode) par7 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void addRoundedRect ( const QRectF & rect, qreal xRadius, qreal yRadius, Qt::SizeMode mode = Qt::AbsoluteSize )
//[2]void addRoundedRect ( qreal x, qreal y, qreal w, qreal h, qreal xRadius, qreal yRadius, Qt::SizeMode mode = Qt::AbsoluteSize )

HB_FUNC_STATIC( QPAINTERPATH_ADDROUNDEDRECT )
{
  if( ISBETWEEN(3,4) && ISQRECTF(1) && ISNUM(2) && ISNUM(3) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_ADDROUNDEDRECT1 );
  }
  else if( ISBETWEEN(6,7) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) && (ISNUM(7)||ISNIL(7)) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_ADDROUNDEDRECT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void addText ( const QPointF & point, const QFont & font, const QString & text )
*/
HB_FUNC_STATIC( QPAINTERPATH_ADDTEXT1 )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    QFont * par2 = (QFont *) _qt5xhb_itemGetPtr(2);
    QString par3 = QLatin1String( hb_parc(3) );
    obj->addText ( *par1, *par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addText ( qreal x, qreal y, const QFont & font, const QString & text )
*/
HB_FUNC_STATIC( QPAINTERPATH_ADDTEXT2 )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    QFont * par3 = (QFont *) _qt5xhb_itemGetPtr(3);
    QString par4 = QLatin1String( hb_parc(4) );
    obj->addText ( par1, par2, *par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void addText ( const QPointF & point, const QFont & font, const QString & text )
//[2]void addText ( qreal x, qreal y, const QFont & font, const QString & text )

HB_FUNC_STATIC( QPAINTERPATH_ADDTEXT )
{
  if( ISNUMPAR(3) && ISQPOINTF(1) && ISQFONT(2) && ISCHAR(3) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_ADDTEXT1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISQFONT(3) && ISCHAR(4) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_ADDTEXT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
qreal angleAtPercent ( qreal t ) const
*/
HB_FUNC_STATIC( QPAINTERPATH_ANGLEATPERCENT )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    hb_retnd( obj->angleAtPercent ( par1 ) );
  }
}


/*
void arcMoveTo ( const QRectF & rectangle, qreal angle )
*/
HB_FUNC_STATIC( QPAINTERPATH_ARCMOVETO1 )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qt5xhb_itemGetPtr(1);
    qreal par2 = hb_parnd(2);
    obj->arcMoveTo ( *par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void arcMoveTo ( qreal x, qreal y, qreal width, qreal height, qreal angle )
*/
HB_FUNC_STATIC( QPAINTERPATH_ARCMOVETO2 )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    qreal par4 = hb_parnd(4);
    qreal par5 = hb_parnd(5);
    obj->arcMoveTo ( par1, par2, par3, par4, par5 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void arcMoveTo ( const QRectF & rectangle, qreal angle )
//[2]void arcMoveTo ( qreal x, qreal y, qreal width, qreal height, qreal angle )

HB_FUNC_STATIC( QPAINTERPATH_ARCMOVETO )
{
  if( ISNUMPAR(2) && ISQRECTF(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_ARCMOVETO1 );
  }
  else if( ISNUMPAR(5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_ARCMOVETO2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void arcTo ( const QRectF & rectangle, qreal startAngle, qreal sweepLength )
*/
HB_FUNC_STATIC( QPAINTERPATH_ARCTO1 )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qt5xhb_itemGetPtr(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    obj->arcTo ( *par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void arcTo ( qreal x, qreal y, qreal width, qreal height, qreal startAngle, qreal sweepLength )
*/
HB_FUNC_STATIC( QPAINTERPATH_ARCTO2 )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    qreal par4 = hb_parnd(4);
    qreal par5 = hb_parnd(5);
    qreal par6 = hb_parnd(6);
    obj->arcTo ( par1, par2, par3, par4, par5, par6 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void arcTo ( const QRectF & rectangle, qreal startAngle, qreal sweepLength )
//[2]void arcTo ( qreal x, qreal y, qreal width, qreal height, qreal startAngle, qreal sweepLength )

HB_FUNC_STATIC( QPAINTERPATH_ARCTO )
{
  if( ISNUMPAR(3) && ISQRECTF(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_ARCTO1 );
  }
  else if( ISNUMPAR(6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_ARCTO2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRectF boundingRect () const
*/
HB_FUNC_STATIC( QPAINTERPATH_BOUNDINGRECT )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->boundingRect (  ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
void closeSubpath ()
*/
HB_FUNC_STATIC( QPAINTERPATH_CLOSESUBPATH )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->closeSubpath (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void connectPath ( const QPainterPath & path )
*/
HB_FUNC_STATIC( QPAINTERPATH_CONNECTPATH )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainterPath * par1 = (QPainterPath *) _qt5xhb_itemGetPtr(1);
    obj->connectPath ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool contains ( const QPointF & point ) const
*/
HB_FUNC_STATIC( QPAINTERPATH_CONTAINS1 )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->contains ( *par1 ) );
  }
}


/*
bool contains ( const QRectF & rectangle ) const
*/
HB_FUNC_STATIC( QPAINTERPATH_CONTAINS2 )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->contains ( *par1 ) );
  }
}


/*
bool contains ( const QPainterPath & p ) const
*/
HB_FUNC_STATIC( QPAINTERPATH_CONTAINS3 )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainterPath * par1 = (QPainterPath *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->contains ( *par1 ) );
  }
}


//[1]bool contains ( const QPointF & point ) const
//[2]bool contains ( const QRectF & rectangle ) const
//[3]bool contains ( const QPainterPath & p ) const

HB_FUNC_STATIC( QPAINTERPATH_CONTAINS )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_CONTAINS1 );
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_CONTAINS2 );
  }
  else if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_CONTAINS3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRectF controlPointRect () const
*/
HB_FUNC_STATIC( QPAINTERPATH_CONTROLPOINTRECT )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->controlPointRect (  ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
void cubicTo ( const QPointF & c1, const QPointF & c2, const QPointF & endPoint )
*/
HB_FUNC_STATIC( QPAINTERPATH_CUBICTO1 )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    QPointF * par2 = (QPointF *) _qt5xhb_itemGetPtr(2);
    QPointF * par3 = (QPointF *) _qt5xhb_itemGetPtr(3);
    obj->cubicTo ( *par1, *par2, *par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void cubicTo ( qreal c1X, qreal c1Y, qreal c2X, qreal c2Y, qreal endPointX, qreal endPointY )
*/
HB_FUNC_STATIC( QPAINTERPATH_CUBICTO2 )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    qreal par4 = hb_parnd(4);
    qreal par5 = hb_parnd(5);
    qreal par6 = hb_parnd(6);
    obj->cubicTo ( par1, par2, par3, par4, par5, par6 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void cubicTo ( const QPointF & c1, const QPointF & c2, const QPointF & endPoint )
//[2]void cubicTo ( qreal c1X, qreal c1Y, qreal c2X, qreal c2Y, qreal endPointX, qreal endPointY )

HB_FUNC_STATIC( QPAINTERPATH_CUBICTO )
{
  if( ISNUMPAR(3) && ISQPOINTF(1) && ISQPOINTF(2) && ISQPOINTF(3) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_CUBICTO1 );
  }
  else if( ISNUMPAR(6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_CUBICTO2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPointF currentPosition () const
*/
HB_FUNC_STATIC( QPAINTERPATH_CURRENTPOSITION )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->currentPosition (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}



/*
int elementCount () const
*/
HB_FUNC_STATIC( QPAINTERPATH_ELEMENTCOUNT )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->elementCount (  ) );
  }
}


/*
Qt::FillRule fillRule () const
*/
HB_FUNC_STATIC( QPAINTERPATH_FILLRULE )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->fillRule (  ) );
  }
}


/*
QPainterPath intersected ( const QPainterPath & p ) const
*/
HB_FUNC_STATIC( QPAINTERPATH_INTERSECTED )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainterPath * par1 = (QPainterPath *) _qt5xhb_itemGetPtr(1);
    QPainterPath * ptr = new QPainterPath( obj->intersected ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}


/*
bool intersects ( const QRectF & rectangle ) const
*/
HB_FUNC_STATIC( QPAINTERPATH_INTERSECTS1 )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->intersects ( *par1 ) );
  }
}


/*
bool intersects ( const QPainterPath & p ) const
*/
HB_FUNC_STATIC( QPAINTERPATH_INTERSECTS2 )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainterPath * par1 = (QPainterPath *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->intersects ( *par1 ) );
  }
}


//[1]bool intersects ( const QRectF & rectangle ) const
//[2]bool intersects ( const QPainterPath & p ) const

HB_FUNC_STATIC( QPAINTERPATH_INTERSECTS )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_INTERSECTS1 );
  }
  else if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_INTERSECTS2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool isEmpty () const
*/
HB_FUNC_STATIC( QPAINTERPATH_ISEMPTY )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isEmpty (  ) );
  }
}


/*
qreal length () const
*/
HB_FUNC_STATIC( QPAINTERPATH_LENGTH )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->length (  ) );
  }
}


/*
void lineTo ( const QPointF & endPoint )
*/
HB_FUNC_STATIC( QPAINTERPATH_LINETO1 )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    obj->lineTo ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void lineTo ( qreal x, qreal y )
*/
HB_FUNC_STATIC( QPAINTERPATH_LINETO2 )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    obj->lineTo ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void lineTo ( const QPointF & endPoint )
//[2]void lineTo ( qreal x, qreal y )

HB_FUNC_STATIC( QPAINTERPATH_LINETO )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_LINETO1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_LINETO2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void moveTo ( const QPointF & point )
*/
HB_FUNC_STATIC( QPAINTERPATH_MOVETO1 )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    obj->moveTo ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void moveTo ( qreal x, qreal y )
*/
HB_FUNC_STATIC( QPAINTERPATH_MOVETO2 )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    obj->moveTo ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void moveTo ( const QPointF & point )
//[2]void moveTo ( qreal x, qreal y )

HB_FUNC_STATIC( QPAINTERPATH_MOVETO )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_MOVETO1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_MOVETO2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
qreal percentAtLength ( qreal len ) const
*/
HB_FUNC_STATIC( QPAINTERPATH_PERCENTATLENGTH )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    hb_retnd( obj->percentAtLength ( par1 ) );
  }
}


/*
QPointF pointAtPercent ( qreal t ) const
*/
HB_FUNC_STATIC( QPAINTERPATH_POINTATPERCENT )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    QPointF * ptr = new QPointF( obj->pointAtPercent ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
void quadTo ( const QPointF & c, const QPointF & endPoint )
*/
HB_FUNC_STATIC( QPAINTERPATH_QUADTO1 )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    QPointF * par2 = (QPointF *) _qt5xhb_itemGetPtr(2);
    obj->quadTo ( *par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void quadTo ( qreal cx, qreal cy, qreal endPointX, qreal endPointY )
*/
HB_FUNC_STATIC( QPAINTERPATH_QUADTO2 )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    qreal par4 = hb_parnd(4);
    obj->quadTo ( par1, par2, par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void quadTo ( const QPointF & c, const QPointF & endPoint )
//[2]void quadTo ( qreal cx, qreal cy, qreal endPointX, qreal endPointY )

HB_FUNC_STATIC( QPAINTERPATH_QUADTO )
{
  if( ISNUMPAR(2) && ISQPOINTF(1) && ISQPOINTF(2) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_QUADTO1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_QUADTO2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setElementPositionAt ( int index, qreal x, qreal y )
*/
HB_FUNC_STATIC( QPAINTERPATH_SETELEMENTPOSITIONAT )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    obj->setElementPositionAt ( (int) hb_parni(1), par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFillRule ( Qt::FillRule fillRule )
*/
HB_FUNC_STATIC( QPAINTERPATH_SETFILLRULE )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFillRule (  (Qt::FillRule) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QPainterPath simplified () const
*/
HB_FUNC_STATIC( QPAINTERPATH_SIMPLIFIED )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->simplified (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}


/*
qreal slopeAtPercent ( qreal t ) const
*/
HB_FUNC_STATIC( QPAINTERPATH_SLOPEATPERCENT )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    hb_retnd( obj->slopeAtPercent ( par1 ) );
  }
}


/*
QPainterPath subtracted ( const QPainterPath & p ) const
*/
HB_FUNC_STATIC( QPAINTERPATH_SUBTRACTED )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainterPath * par1 = (QPainterPath *) _qt5xhb_itemGetPtr(1);
    QPainterPath * ptr = new QPainterPath( obj->subtracted ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}


/*
void swap ( QPainterPath & other )
*/
HB_FUNC_STATIC( QPAINTERPATH_SWAP )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainterPath * par1 = (QPainterPath *) _qt5xhb_itemGetPtr(1);
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QPolygonF toFillPolygon ( const QTransform & matrix ) const
*/
HB_FUNC_STATIC( QPAINTERPATH_TOFILLPOLYGON1 )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTransform * par1 = (QTransform *) _qt5xhb_itemGetPtr(1);
    QPolygonF * ptr = new QPolygonF( obj->toFillPolygon ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}



//[1]QPolygonF toFillPolygon ( const QTransform & matrix ) const
//[2]QPolygonF toFillPolygon ( const QMatrix & matrix = QMatrix() ) const

HB_FUNC_STATIC( QPAINTERPATH_TOFILLPOLYGON )
{
  if( ISNUMPAR(1) && ISQTRANSFORM(1) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_TOFILLPOLYGON1 );
  }
  //else if( ISBETWEEN(0,1) && ISQMATRIX(1) )
  //{
  //  HB_FUNC_EXEC( QPAINTERPATH_TOFILLPOLYGON2 );
  //}
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}



/*
QPainterPath toReversed () const
*/
HB_FUNC_STATIC( QPAINTERPATH_TOREVERSED )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->toReversed (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}




/*
void translate ( qreal dx, qreal dy )
*/
HB_FUNC_STATIC( QPAINTERPATH_TRANSLATE1 )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    obj->translate ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void translate ( const QPointF & offset )
*/
HB_FUNC_STATIC( QPAINTERPATH_TRANSLATE2 )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    obj->translate ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void translate ( qreal dx, qreal dy )
//[2]void translate ( const QPointF & offset )

HB_FUNC_STATIC( QPAINTERPATH_TRANSLATE )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_TRANSLATE1 );
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_TRANSLATE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPainterPath translated ( qreal dx, qreal dy ) const
*/
HB_FUNC_STATIC( QPAINTERPATH_TRANSLATED1 )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    QPainterPath * ptr = new QPainterPath( obj->translated ( par1, par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}


/*
QPainterPath translated ( const QPointF & offset ) const
*/
HB_FUNC_STATIC( QPAINTERPATH_TRANSLATED2 )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    QPainterPath * ptr = new QPainterPath( obj->translated ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}


//[1]QPainterPath translated ( qreal dx, qreal dy ) const
//[2]QPainterPath translated ( const QPointF & offset ) const

HB_FUNC_STATIC( QPAINTERPATH_TRANSLATED )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_TRANSLATED1 );
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_TRANSLATED2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPainterPath united ( const QPainterPath & p ) const
*/
HB_FUNC_STATIC( QPAINTERPATH_UNITED )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainterPath * par1 = (QPainterPath *) _qt5xhb_itemGetPtr(1);
    QPainterPath * ptr = new QPainterPath( obj->united ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}



HB_FUNC_STATIC( QPAINTERPATH_NEWFROM )
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

HB_FUNC_STATIC( QPAINTERPATH_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QPAINTERPATH_NEWFROM );
}

HB_FUNC_STATIC( QPAINTERPATH_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QPAINTERPATH_NEWFROM );
}

HB_FUNC_STATIC( QPAINTERPATH_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QPAINTERPATH_SETSELFDESTRUCTION )
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
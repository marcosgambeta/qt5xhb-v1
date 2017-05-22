/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOLYGON
REQUEST QRECTF
#endif

CLASS QPolygonF

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new
   METHOD delete
   METHOD swap
   METHOD translate1
   METHOD translate2
   METHOD translated1
   METHOD translated2
   METHOD toPolygon
   METHOD isClosed
   METHOD boundingRect
   METHOD containsPoint
   METHOD united
   METHOD intersected
   METHOD subtracted

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPolygonF
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QPolygonF>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QPolygonF>
#endif

/*
QPolygonF()
*/
HB_FUNC_STATIC( QPOLYGONF_NEW1 )
{
  QPolygonF * o = new QPolygonF ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QPolygonF(int size)
*/
HB_FUNC_STATIC( QPOLYGONF_NEW2 )
{
  int par1 = hb_parni(1);
  QPolygonF * o = new QPolygonF ( par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QPolygonF(const QPolygonF &a)
*/
HB_FUNC_STATIC( QPOLYGONF_NEW3 )
{
  QPolygonF * par1 = (QPolygonF *) _qt5xhb_itemGetPtr(1);
  QPolygonF * o = new QPolygonF ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QPolygonF(const QVector<QPointF> &v)
*/
HB_FUNC_STATIC( QPOLYGONF_NEW4 )
{
QVector<QPointF> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
par1 << *(QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
  QPolygonF * o = new QPolygonF ( par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QPolygonF(const QRectF &r)
*/
HB_FUNC_STATIC( QPOLYGONF_NEW5 )
{
  QRectF * par1 = (QRectF *) _qt5xhb_itemGetPtr(1);
  QPolygonF * o = new QPolygonF ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QPolygonF(const QPolygon &a)
*/
HB_FUNC_STATIC( QPOLYGONF_NEW6 )
{
  QPolygon * par1 = (QPolygon *) _qt5xhb_itemGetPtr(1);
  QPolygonF * o = new QPolygonF ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}


//[1]QPolygonF()
//[2]QPolygonF(int size)
//[3]QPolygonF(const QPolygonF &a)
//[4]QPolygonF(const QVector<QPointF> &v)
//[5]QPolygonF(const QRectF &r)
//[6]QPolygonF(const QPolygon &a)

HB_FUNC_STATIC( QPOLYGONF_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QPOLYGONF_NEW1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QPOLYGONF_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQPOLYGONF(1) )
  {
    HB_FUNC_EXEC( QPOLYGONF_NEW3 );
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QPOLYGONF_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QPOLYGONF_NEW5 );
  }
  else if( ISNUMPAR(1) && ISQPOLYGON(1) )
  {
    HB_FUNC_EXEC( QPOLYGONF_NEW6 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPOLYGONF_DELETE )
{
  QPolygonF * obj = (QPolygonF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void swap(QPolygonF &other)
*/
HB_FUNC_STATIC( QPOLYGONF_SWAP )
{
  QPolygonF * obj = (QPolygonF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPolygonF * par1 = (QPolygonF *) _qt5xhb_itemGetPtr(1);
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void translate(qreal dx, qreal dy)
*/
HB_FUNC_STATIC( QPOLYGONF_TRANSLATE1 )
{
  QPolygonF * obj = (QPolygonF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->translate ( PQREAL(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void translate(const QPointF &offset)
*/
HB_FUNC_STATIC( QPOLYGONF_TRANSLATE2 )
{
  QPolygonF * obj = (QPolygonF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    obj->translate ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QPolygonF translated(qreal dx, qreal dy) const
*/
HB_FUNC_STATIC( QPOLYGONF_TRANSLATED1 )
{
  QPolygonF * obj = (QPolygonF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPolygonF * ptr = new QPolygonF( obj->translated ( PQREAL(1), PQREAL(2) ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}


/*
QPolygonF translated(const QPointF &offset) const
*/
HB_FUNC_STATIC( QPOLYGONF_TRANSLATED2 )
{
  QPolygonF * obj = (QPolygonF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    QPolygonF * ptr = new QPolygonF( obj->translated ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}


/*
QPolygon toPolygon() const
*/
HB_FUNC_STATIC( QPOLYGONF_TOPOLYGON )
{
  QPolygonF * obj = (QPolygonF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPolygon * ptr = new QPolygon( obj->toPolygon () );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGON", true );
  }
}


/*
bool isClosed() const
*/
HB_FUNC_STATIC( QPOLYGONF_ISCLOSED )
{
  QPolygonF * obj = (QPolygonF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isClosed () );
  }
}


/*
QRectF boundingRect() const
*/
HB_FUNC_STATIC( QPOLYGONF_BOUNDINGRECT )
{
  QPolygonF * obj = (QPolygonF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->boundingRect () );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
bool containsPoint(const QPointF &pt, Qt::FillRule fillRule) const
*/
HB_FUNC_STATIC( QPOLYGONF_CONTAINSPOINT )
{
  QPolygonF * obj = (QPolygonF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    int par2 = hb_parni(2);
    hb_retl( obj->containsPoint ( *par1,  (Qt::FillRule) par2 ) );
  }
}


/*
QPolygonF united(const QPolygonF &r) const
*/
HB_FUNC_STATIC( QPOLYGONF_UNITED )
{
  QPolygonF * obj = (QPolygonF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPolygonF * par1 = (QPolygonF *) _qt5xhb_itemGetPtr(1);
    QPolygonF * ptr = new QPolygonF( obj->united ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}


/*
QPolygonF intersected(const QPolygonF &r) const
*/
HB_FUNC_STATIC( QPOLYGONF_INTERSECTED )
{
  QPolygonF * obj = (QPolygonF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPolygonF * par1 = (QPolygonF *) _qt5xhb_itemGetPtr(1);
    QPolygonF * ptr = new QPolygonF( obj->intersected ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}


/*
QPolygonF subtracted(const QPolygonF &r) const
*/
HB_FUNC_STATIC( QPOLYGONF_SUBTRACTED )
{
  QPolygonF * obj = (QPolygonF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPolygonF * par1 = (QPolygonF *) _qt5xhb_itemGetPtr(1);
    QPolygonF * ptr = new QPolygonF( obj->subtracted ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}



HB_FUNC_STATIC( QPOLYGONF_NEWFROM )
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

HB_FUNC_STATIC( QPOLYGONF_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QPOLYGONF_NEWFROM );
}

HB_FUNC_STATIC( QPOLYGONF_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QPOLYGONF_NEWFROM );
}

HB_FUNC_STATIC( QPOLYGONF_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QPOLYGONF_SETSELFDESTRUCTION )
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
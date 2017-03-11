/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QPOINT
#endif

CLASS QPolygon

   DATA pointer
   DATA class_id INIT Class_Id_QPolygon
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new
   METHOD delete
   METHOD swap
   METHOD translate1
   METHOD translate2
   METHOD translated1
   METHOD translated2
   METHOD boundingRect
   METHOD point1
   METHOD point2
   METHOD setPoint
   METHOD setPoint2
   METHOD putPoints
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

PROCEDURE destroyObject () CLASS QPolygon
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QPolygon>
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
#include <QPolygon>
#endif

/*
QPolygon()
*/
HB_FUNC_STATIC( QPOLYGON_NEW1 )
{
  QPolygon * o = new QPolygon (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPolygon *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}

/*
QPolygon(int size)
*/
HB_FUNC_STATIC( QPOLYGON_NEW2 )
{
  int par1 = hb_parni(1);
  QPolygon * o = new QPolygon ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPolygon *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}

/*
QPolygon(const QPolygon &a)
*/
HB_FUNC_STATIC( QPOLYGON_NEW3 )
{
  QPolygon * par1 = (QPolygon *) _qt5xhb_itemGetPtr(1);
  QPolygon * o = new QPolygon ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPolygon *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}

/*
QPolygon(const QVector<QPoint> &v)
*/
HB_FUNC_STATIC( QPOLYGON_NEW4 )
{
QVector<QPoint> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
par1 << *(QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
  QPolygon * o = new QPolygon ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPolygon *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}

/*
QPolygon(const QRect &r, bool closed=false)
*/
HB_FUNC_STATIC( QPOLYGON_NEW5 )
{
  QRect * par1 = (QRect *) _qt5xhb_itemGetPtr(1);
  bool par2 = ISNIL(2)? false : hb_parl(2);
  QPolygon * o = new QPolygon ( *par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPolygon *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QPolygon()
//[2]QPolygon(int size)
//[3]QPolygon(const QPolygon &a)
//[4]QPolygon(const QVector<QPoint> &v)
//[5]QPolygon(const QRect &r, bool closed=false)
//[6]QPolygon(int nPoints, const int *points)

// TODO: resolver conflito entre [3] e [5] quando for 1 parâmetro do tipo O

HB_FUNC_STATIC( QPOLYGON_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QPOLYGON_NEW1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QPOLYGON_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQPOLYGON(1) )
  {
    HB_FUNC_EXEC( QPOLYGON_NEW3 );
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QPOLYGON_NEW4 );
  }
  else if( ISBETWEEN(1,2) && ISQRECT(1) && (ISLOG(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QPOLYGON_NEW5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
  //else if( ISNUMPAR(2) && ISNUM(1) && ISARRAY(2) )
  //{
  //  HB_FUNC_EXEC( QPOLYGON_NEW6 );
  //}
}

HB_FUNC_STATIC( QPOLYGON_DELETE )
{
  QPolygon * obj = (QPolygon *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void swap(QPolygon &other)
*/
HB_FUNC_STATIC( QPOLYGON_SWAP )
{
  QPolygon * obj = (QPolygon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPolygon * par1 = (QPolygon *) _qt5xhb_itemGetPtr(1);
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void translate(int dx, int dy)
*/
HB_FUNC_STATIC( QPOLYGON_TRANSLATE1 )
{
  QPolygon * obj = (QPolygon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->translate ( (int) hb_parni(1), (int) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void translate(const QPoint &offset)
*/
HB_FUNC_STATIC( QPOLYGON_TRANSLATE2 )
{
  QPolygon * obj = (QPolygon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
    obj->translate ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QPolygon translated(int dx, int dy) const
*/
HB_FUNC_STATIC( QPOLYGON_TRANSLATED1 )
{
  QPolygon * obj = (QPolygon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPolygon * ptr = new QPolygon( obj->translated ( (int) hb_parni(1), (int) hb_parni(2) ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGON", true );
  }
}


/*
QPolygon translated(const QPoint &offset) const
*/
HB_FUNC_STATIC( QPOLYGON_TRANSLATED2 )
{
  QPolygon * obj = (QPolygon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
    QPolygon * ptr = new QPolygon( obj->translated ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGON", true );
  }
}


/*
QRect boundingRect() const
*/
HB_FUNC_STATIC( QPOLYGON_BOUNDINGRECT )
{
  QPolygon * obj = (QPolygon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->boundingRect (  ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
void point(int i, int *x, int *y) const
*/
HB_FUNC_STATIC( QPOLYGON_POINT1 )
{
  QPolygon * obj = (QPolygon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2;
    int par3;
    obj->point ( (int) hb_parni(1), &par2, &par3 );
    hb_storni( par2, 2 );
    hb_storni( par3, 3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QPoint point(int i) const
*/
HB_FUNC_STATIC( QPOLYGON_POINT2 )
{
  QPolygon * obj = (QPolygon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->point ( (int) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
void setPoint(int index, int x, int y)
*/
HB_FUNC_STATIC( QPOLYGON_SETPOINT )
{
  QPolygon * obj = (QPolygon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPoint ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPoint(int index, const QPoint &p)
*/
HB_FUNC_STATIC( QPOLYGON_SETPOINT2 )
{
  QPolygon * obj = (QPolygon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * par2 = (QPoint *) _qt5xhb_itemGetPtr(2);
    obj->setPoint ( (int) hb_parni(1), *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}






/*
void putPoints(int index, int nPoints, const QPolygon & from, int fromIndex=0)
*/
HB_FUNC_STATIC( QPOLYGON_PUTPOINTS )
{
  QPolygon * obj = (QPolygon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPolygon * par3 = (QPolygon *) _qt5xhb_itemGetPtr(3);
    obj->putPoints ( (int) hb_parni(1), (int) hb_parni(2), *par3, (int) ISNIL(4)? 0 : hb_parni(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool containsPoint(const QPoint &pt, Qt::FillRule fillRule) const
*/
HB_FUNC_STATIC( QPOLYGON_CONTAINSPOINT )
{
  QPolygon * obj = (QPolygon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
    int par2 = hb_parni(2);
    hb_retl( obj->containsPoint ( *par1,  (Qt::FillRule) par2 ) );
  }
}


/*
QPolygon united(const QPolygon &r) const
*/
HB_FUNC_STATIC( QPOLYGON_UNITED )
{
  QPolygon * obj = (QPolygon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPolygon * par1 = (QPolygon *) _qt5xhb_itemGetPtr(1);
    QPolygon * ptr = new QPolygon( obj->united ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGON", true );
  }
}


/*
QPolygon intersected(const QPolygon &r) const
*/
HB_FUNC_STATIC( QPOLYGON_INTERSECTED )
{
  QPolygon * obj = (QPolygon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPolygon * par1 = (QPolygon *) _qt5xhb_itemGetPtr(1);
    QPolygon * ptr = new QPolygon( obj->intersected ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGON", true );
  }
}


/*
QPolygon subtracted(const QPolygon &r) const
*/
HB_FUNC_STATIC( QPOLYGON_SUBTRACTED )
{
  QPolygon * obj = (QPolygon *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPolygon * par1 = (QPolygon *) _qt5xhb_itemGetPtr(1);
    QPolygon * ptr = new QPolygon( obj->subtracted ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGON", true );
  }
}



HB_FUNC_STATIC( QPOLYGON_NEWFROM )
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

HB_FUNC_STATIC( QPOLYGON_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QPOLYGON_NEWFROM );
}

HB_FUNC_STATIC( QPOLYGON_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QPOLYGON_NEWFROM );
}

HB_FUNC_STATIC( QPOLYGON_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QPOLYGON_SETSELFDESTRUCTION )
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
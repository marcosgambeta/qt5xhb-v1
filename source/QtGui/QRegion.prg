/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QRECT
#endif

CLASS QRegion

   DATA pointer
   DATA class_id INIT Class_Id_QRegion
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new
   METHOD delete
   METHOD swap
   METHOD isEmpty
   METHOD isNull
   METHOD contains1
   METHOD contains2
   METHOD translate1
   METHOD translate2
   METHOD translated1
   METHOD translated2
   METHOD united1
   METHOD united2
   METHOD subtracted
   METHOD xored
   METHOD intersects1
   METHOD intersects2
   METHOD boundingRect
   METHOD rectCount
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QRegion
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QRegion>
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
#include <QRegion>
#endif
#endif

/*
QRegion()
*/
HB_FUNC_STATIC( QREGION_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QRegion * o = new QRegion (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QRegion *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QRegion(int x, int y, int w, int h, RegionType t = Rectangle)
*/
HB_FUNC_STATIC( QREGION_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = hb_parni(1);
  int par2 = hb_parni(2);
  int par3 = hb_parni(3);
  int par4 = hb_parni(4);
  int par5 = ISNIL(5)? (int) QRegion::Rectangle : hb_parni(5);
  QRegion * o = new QRegion ( par1, par2, par3, par4,  (QRegion::RegionType) par5 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QRegion *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QRegion(const QRect &r, RegionType t = Rectangle)
*/
HB_FUNC_STATIC( QREGION_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QRect * par1 = (QRect *) _qt5xhb_itemGetPtr(1);
  int par2 = ISNIL(2)? (int) QRegion::Rectangle : hb_parni(2);
  QRegion * o = new QRegion ( *par1,  (QRegion::RegionType) par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QRegion *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QRegion(const QPolygon &pa, Qt::FillRule fillRule = Qt::OddEvenFill)
*/
HB_FUNC_STATIC( QREGION_NEW4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QPolygon * par1 = (QPolygon *) _qt5xhb_itemGetPtr(1);
  int par2 = ISNIL(2)? (int) Qt::OddEvenFill : hb_parni(2);
  QRegion * o = new QRegion ( *par1,  (Qt::FillRule) par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QRegion *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QRegion(const QRegion &region)
*/
HB_FUNC_STATIC( QREGION_NEW5 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QRegion * par1 = (QRegion *) _qt5xhb_itemGetPtr(1);
  QRegion * o = new QRegion ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QRegion *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QRegion(const QBitmap &bitmap)
*/
HB_FUNC_STATIC( QREGION_NEW6 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QBitmap * par1 = (QBitmap *) _qt5xhb_itemGetPtr(1);
  QRegion * o = new QRegion ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QRegion *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


//[1]QRegion()
//[2]QRegion(int x, int y, int w, int h, RegionType t = Rectangle)
//[3]QRegion(const QRect &r, RegionType t = Rectangle)
//[4]QRegion(const QPolygon &pa, Qt::FillRule fillRule = Qt::OddEvenFill)
//[5]QRegion(const QRegion &region)
//[6]QRegion(const QBitmap &bitmap)

HB_FUNC_STATIC( QREGION_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QREGION_NEW1 );
  }
  else if( ISBETWEEN(4,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISNUM(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QREGION_NEW2 );
  }
  else if( ISBETWEEN(1,2) && ISQRECT(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QREGION_NEW3 );
  }
  else if( ISBETWEEN(1,2) && ISQPOLYGON(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QREGION_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQREGION(1) )
  {
    HB_FUNC_EXEC( QREGION_NEW5 );
  }
  else if( ISNUMPAR(1) && ISQBITMAP(1) )
  {
    HB_FUNC_EXEC( QREGION_NEW6 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QREGION_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QRegion * obj = (QRegion *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void swap(QRegion &other)
*/
HB_FUNC_STATIC( QREGION_SWAP )
{
  QRegion * obj = (QRegion *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRegion * par1 = (QRegion *) _qt5xhb_itemGetPtr(1);
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QREGION_ISEMPTY )
{
  QRegion * obj = (QRegion *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isEmpty (  ) );
  }
}


/*
bool isNull() const
*/
HB_FUNC_STATIC( QREGION_ISNULL )
{
  QRegion * obj = (QRegion *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}


/*
bool contains(const QPoint &p) const
*/
HB_FUNC_STATIC( QREGION_CONTAINS1 )
{
  QRegion * obj = (QRegion *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->contains ( *par1 ) );
  }
}


/*
bool contains(const QRect &r) const
*/
HB_FUNC_STATIC( QREGION_CONTAINS2 )
{
  QRegion * obj = (QRegion *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * par1 = (QRect *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->contains ( *par1 ) );
  }
}


/*
void translate(int dx, int dy)
*/
HB_FUNC_STATIC( QREGION_TRANSLATE1 )
{
  QRegion * obj = (QRegion *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->translate ( (int) hb_parni(1), (int) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void translate(const QPoint &p)
*/
HB_FUNC_STATIC( QREGION_TRANSLATE2 )
{
  QRegion * obj = (QRegion *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
    obj->translate ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QRegion translated(int dx, int dy) const
*/
HB_FUNC_STATIC( QREGION_TRANSLATED1 )
{
  QRegion * obj = (QRegion *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRegion * ptr = new QRegion( obj->translated ( (int) hb_parni(1), (int) hb_parni(2) ) );
    _qt5xhb_createReturnClass ( ptr, "QREGION", true );
  }
}


/*
QRegion translated(const QPoint &p) const
*/
HB_FUNC_STATIC( QREGION_TRANSLATED2 )
{
  QRegion * obj = (QRegion *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
    QRegion * ptr = new QRegion( obj->translated ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QREGION", true );
  }
}


/*
QRegion united(const QRegion &r) const
*/
HB_FUNC_STATIC( QREGION_UNITED1 )
{
  QRegion * obj = (QRegion *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRegion * par1 = (QRegion *) _qt5xhb_itemGetPtr(1);
    QRegion * ptr = new QRegion( obj->united ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QREGION", true );
  }
}


/*
QRegion united(const QRect &r) const
*/
HB_FUNC_STATIC( QREGION_UNITED2 )
{
  QRegion * obj = (QRegion *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * par1 = (QRect *) _qt5xhb_itemGetPtr(1);
    QRegion * ptr = new QRegion( obj->united ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QREGION", true );
  }
}




/*
QRegion subtracted(const QRegion &r) const
*/
HB_FUNC_STATIC( QREGION_SUBTRACTED )
{
  QRegion * obj = (QRegion *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRegion * par1 = (QRegion *) _qt5xhb_itemGetPtr(1);
    QRegion * ptr = new QRegion( obj->subtracted ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QREGION", true );
  }
}


/*
QRegion xored(const QRegion &r) const
*/
HB_FUNC_STATIC( QREGION_XORED )
{
  QRegion * obj = (QRegion *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRegion * par1 = (QRegion *) _qt5xhb_itemGetPtr(1);
    QRegion * ptr = new QRegion( obj->xored ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QREGION", true );
  }
}








/*
bool intersects(const QRegion &r) const
*/
HB_FUNC_STATIC( QREGION_INTERSECTS1 )
{
  QRegion * obj = (QRegion *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRegion * par1 = (QRegion *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->intersects ( *par1 ) );
  }
}


/*
bool intersects(const QRect &r) const
*/
HB_FUNC_STATIC( QREGION_INTERSECTS2 )
{
  QRegion * obj = (QRegion *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * par1 = (QRect *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->intersects ( *par1 ) );
  }
}


/*
QRect boundingRect() const
*/
HB_FUNC_STATIC( QREGION_BOUNDINGRECT )
{
  QRegion * obj = (QRegion *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->boundingRect (  ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}




/*
int rectCount() const
*/
HB_FUNC_STATIC( QREGION_RECTCOUNT )
{
  QRegion * obj = (QRegion *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->rectCount (  ) );
  }
}



HB_FUNC_STATIC( QREGION_NEWFROM )
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

HB_FUNC_STATIC( QREGION_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QREGION_NEWFROM );
}

HB_FUNC_STATIC( QREGION_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QREGION_NEWFROM );
}

HB_FUNC_STATIC( QREGION_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QREGION_SETSELFDESTRUCTION )
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
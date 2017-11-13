/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPAGESIZE
REQUEST QMARGINSF
REQUEST QMARGINS
REQUEST QRECTF
REQUEST QRECT
#endif

CLASS QPageLayout

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new3
   METHOD new
   METHOD delete
   METHOD swap
   METHOD isEquivalentTo
   METHOD isValid
   METHOD mode
   METHOD setMode
   METHOD pageSize
   METHOD orientation
   METHOD setOrientation
   METHOD units
   METHOD setUnits
   METHOD setMargins
   METHOD setLeftMargin
   METHOD setRightMargin
   METHOD setTopMargin
   METHOD setBottomMargin
   METHOD margins1
   METHOD margins2
   METHOD margins
   METHOD marginsPoints
   METHOD marginsPixels
   METHOD setMinimumMargins
   METHOD minimumMargins
   METHOD maximumMargins
   METHOD fullRect1
   METHOD fullRect2
   METHOD fullRect
   METHOD fullRectPoints
   METHOD fullRectPixels
   METHOD paintRect1
   METHOD paintRect2
   METHOD paintRect
   METHOD paintRectPoints
   METHOD paintRectPixels

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPageLayout
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QPageLayout>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QPageLayout>
#endif

#include <QRect>

/*
QPageLayout()
*/
HB_FUNC_STATIC( QPAGELAYOUT_NEW1 )
{
  QPageLayout * o = new QPageLayout ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QPageLayout(const QPageLayout &other)
*/
HB_FUNC_STATIC( QPAGELAYOUT_NEW3 )
{
  QPageLayout * o = new QPageLayout ( *PQPAGELAYOUT(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}


//[1]QPageLayout()
//[2]QPageLayout(const QPageSize &pageSize, Orientation orientation, const QMarginsF &margins, Unit units = Point, const QMarginsF &minMargins = QMarginsF(0, 0, 0, 0))
//[3]QPageLayout(const QPageLayout &other)

HB_FUNC_STATIC( QPAGELAYOUT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QPAGELAYOUT_NEW1 );
  }
  //else if( ISBETWEEN(3,5) && ISQPAGESIZE(1) && ISNUM(2) && ISQMARGINSF(3) && ISOPTNUM(4) && (ISQMARGINSF(5)||ISNIL(5)) )
  //{
  //  HB_FUNC_EXEC( QPAGELAYOUT_NEW2 );
  //}
  else if( ISNUMPAR(1) && ISQPAGELAYOUT(1) )
  {
    HB_FUNC_EXEC( QPAGELAYOUT_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPAGELAYOUT_DELETE )
{
  QPageLayout * obj = (QPageLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void swap(QPageLayout &other)
*/
HB_FUNC_STATIC( QPAGELAYOUT_SWAP )
{
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPageLayout * par1 = (QPageLayout *) _qt5xhb_itemGetPtr(1);
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isEquivalentTo(const QPageLayout &other) const
*/
HB_FUNC_STATIC( QPAGELAYOUT_ISEQUIVALENTTO )
{
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isEquivalentTo ( *PQPAGELAYOUT(1) ) );
  }
}


/*
bool isValid() const
*/
HB_FUNC_STATIC( QPAGELAYOUT_ISVALID )
{
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}


/*
Mode mode() const
*/
HB_FUNC_STATIC( QPAGELAYOUT_MODE )
{
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->mode () );
  }
}

/*
void setMode(Mode mode)
*/
HB_FUNC_STATIC( QPAGELAYOUT_SETMODE )
{
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMode ( (QPageLayout::Mode) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QPageSize pageSize() const
*/
HB_FUNC_STATIC( QPAGELAYOUT_PAGESIZE )
{
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPageSize * ptr = new QPageSize( obj->pageSize () );
    _qt5xhb_createReturnClass ( ptr, "QPAGESIZE", true );
  }
}


/*
Orientation orientation() const
*/
HB_FUNC_STATIC( QPAGELAYOUT_ORIENTATION )
{
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->orientation () );
  }
}

/*
void setOrientation(Orientation orientation)
*/
HB_FUNC_STATIC( QPAGELAYOUT_SETORIENTATION )
{
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setOrientation ( (QPageLayout::Orientation) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Unit units() const
*/
HB_FUNC_STATIC( QPAGELAYOUT_UNITS )
{
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->units () );
  }
}

/*
void setUnits(Unit units)
*/
HB_FUNC_STATIC( QPAGELAYOUT_SETUNITS )
{
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setUnits ( (QPageLayout::Unit) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool setMargins(const QMarginsF &margins)
*/
HB_FUNC_STATIC( QPAGELAYOUT_SETMARGINS )
{
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->setMargins ( *PQMARGINSF(1) ) );
  }
}


/*
bool setLeftMargin(qreal leftMargin)
*/
HB_FUNC_STATIC( QPAGELAYOUT_SETLEFTMARGIN )
{
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->setLeftMargin ( PQREAL(1) ) );
  }
}


/*
bool setRightMargin(qreal rightMargin)
*/
HB_FUNC_STATIC( QPAGELAYOUT_SETRIGHTMARGIN )
{
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->setRightMargin ( PQREAL(1) ) );
  }
}


/*
bool setTopMargin(qreal topMargin)
*/
HB_FUNC_STATIC( QPAGELAYOUT_SETTOPMARGIN )
{
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->setTopMargin ( PQREAL(1) ) );
  }
}


/*
bool setBottomMargin(qreal bottomMargin)
*/
HB_FUNC_STATIC( QPAGELAYOUT_SETBOTTOMMARGIN )
{
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->setBottomMargin ( PQREAL(1) ) );
  }
}


/*
QMarginsF margins() const
*/
HB_FUNC_STATIC( QPAGELAYOUT_MARGINS1 )
{
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMarginsF * ptr = new QMarginsF( obj->margins () );
    _qt5xhb_createReturnClass ( ptr, "QMARGINSF", true );
  }
}

/*
QMarginsF margins(Unit units) const
*/
HB_FUNC_STATIC( QPAGELAYOUT_MARGINS2 )
{
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMarginsF * ptr = new QMarginsF( obj->margins ( (QPageLayout::Unit) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QMARGINSF", true );
  }
}


//[1]QMarginsF margins() const
//[2]QMarginsF margins(Unit units) const

HB_FUNC_STATIC( QPAGELAYOUT_MARGINS )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QPAGELAYOUT_MARGINS1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QPAGELAYOUT_MARGINS2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QMargins marginsPoints() const
*/
HB_FUNC_STATIC( QPAGELAYOUT_MARGINSPOINTS )
{
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMargins * ptr = new QMargins( obj->marginsPoints () );
    _qt5xhb_createReturnClass ( ptr, "QMARGINS", true );
  }
}


/*
QMargins marginsPixels(int resolution) const
*/
HB_FUNC_STATIC( QPAGELAYOUT_MARGINSPIXELS )
{
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMargins * ptr = new QMargins( obj->marginsPixels ( PINT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QMARGINS", true );
  }
}


/*
void setMinimumMargins(const QMarginsF &minMargins)
*/
HB_FUNC_STATIC( QPAGELAYOUT_SETMINIMUMMARGINS )
{
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMinimumMargins ( *PQMARGINSF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QMarginsF minimumMargins() const
*/
HB_FUNC_STATIC( QPAGELAYOUT_MINIMUMMARGINS )
{
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMarginsF * ptr = new QMarginsF( obj->minimumMargins () );
    _qt5xhb_createReturnClass ( ptr, "QMARGINSF", true );
  }
}


/*
QMarginsF maximumMargins() const
*/
HB_FUNC_STATIC( QPAGELAYOUT_MAXIMUMMARGINS )
{
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMarginsF * ptr = new QMarginsF( obj->maximumMargins () );
    _qt5xhb_createReturnClass ( ptr, "QMARGINSF", true );
  }
}


/*
QRectF fullRect() const
*/
HB_FUNC_STATIC( QPAGELAYOUT_FULLRECT1 )
{
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->fullRect () );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
QRectF fullRect(Unit units) const
*/
HB_FUNC_STATIC( QPAGELAYOUT_FULLRECT2 )
{
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->fullRect ( (QPageLayout::Unit) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


//[1]QRectF fullRect() const
//[2]QRectF fullRect(Unit units) const

HB_FUNC_STATIC( QPAGELAYOUT_FULLRECT )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QPAGELAYOUT_FULLRECT1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QPAGELAYOUT_FULLRECT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRect fullRectPoints() const
*/
HB_FUNC_STATIC( QPAGELAYOUT_FULLRECTPOINTS )
{
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->fullRectPoints () );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
QRect fullRectPixels(int resolution) const
*/
HB_FUNC_STATIC( QPAGELAYOUT_FULLRECTPIXELS )
{
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->fullRectPixels ( PINT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
QRectF paintRect() const
*/
HB_FUNC_STATIC( QPAGELAYOUT_PAINTRECT1 )
{
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->paintRect () );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
QRectF paintRect(Unit units) const
*/
HB_FUNC_STATIC( QPAGELAYOUT_PAINTRECT2 )
{
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->paintRect ( (QPageLayout::Unit) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


//[1]QRectF paintRect() const
//[2]QRectF paintRect(Unit units) const

HB_FUNC_STATIC( QPAGELAYOUT_PAINTRECT )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QPAGELAYOUT_PAINTRECT1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QPAGELAYOUT_PAINTRECT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRect paintRectPoints() const
*/
HB_FUNC_STATIC( QPAGELAYOUT_PAINTRECTPOINTS )
{
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->paintRectPoints () );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
QRect paintRectPixels(int resolution) const
*/
HB_FUNC_STATIC( QPAGELAYOUT_PAINTRECTPIXELS )
{
  QPageLayout * obj = (QPageLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->paintRectPixels ( PINT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}



HB_FUNC_STATIC( QPAGELAYOUT_NEWFROM )
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

HB_FUNC_STATIC( QPAGELAYOUT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QPAGELAYOUT_NEWFROM );
}

HB_FUNC_STATIC( QPAGELAYOUT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QPAGELAYOUT_NEWFROM );
}

HB_FUNC_STATIC( QPAGELAYOUT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QPAGELAYOUT_SETSELFDESTRUCTION )
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
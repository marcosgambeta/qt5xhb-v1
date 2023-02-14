/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMARGINS
REQUEST QMARGINSF
REQUEST QPAGESIZE
REQUEST QRECT
REQUEST QRECTF
#endif

CLASS QPageLayout

   DATA pointer
   DATA self_destruction INIT .F.

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
   METHOD margins
   METHOD marginsPoints
   METHOD marginsPixels
   METHOD setMinimumMargins
   METHOD minimumMargins
   METHOD maximumMargins
   METHOD fullRect
   METHOD fullRectPoints
   METHOD fullRectPixels
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

PROCEDURE destroyObject() CLASS QPageLayout
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
#include <QtGui/QPageLayout>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
#include <QtGui/QPageLayout>
#endif
#endif

#include <QtCore/QRect>

HB_FUNC_STATIC( QPAGELAYOUT_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QPageLayout()
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
    QPageLayout * obj = new QPageLayout();
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else if( ISNUMPAR(1) && ISQPAGELAYOUT(1) )
  {
    /*
    QPageLayout( const QPageLayout & other )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
    QPageLayout * obj = new QPageLayout( *PQPAGELAYOUT(1) );
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QPAGELAYOUT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
void swap( QPageLayout & other )
*/
HB_FUNC_STATIC( QPAGELAYOUT_SWAP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPAGELAYOUT(1) )
    {
#endif
      obj->swap( *PQPAGELAYOUT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
bool isEquivalentTo( const QPageLayout & other ) const
*/
HB_FUNC_STATIC( QPAGELAYOUT_ISEQUIVALENTTO )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPAGELAYOUT(1) )
    {
#endif
      RBOOL( obj->isEquivalentTo( *PQPAGELAYOUT(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
bool isValid() const
*/
HB_FUNC_STATIC( QPAGELAYOUT_ISVALID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isValid() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QPageLayout::Mode mode() const
*/
HB_FUNC_STATIC( QPAGELAYOUT_MODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->mode() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setMode( QPageLayout::Mode mode )
*/
HB_FUNC_STATIC( QPAGELAYOUT_SETMODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setMode( (QPageLayout::Mode) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QPageSize pageSize() const
*/
HB_FUNC_STATIC( QPAGELAYOUT_PAGESIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPageSize * ptr = new QPageSize( obj->pageSize() );
      Qt5xHb::createReturnClass(ptr, "QPAGESIZE", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QPageLayout::Orientation orientation() const
*/
HB_FUNC_STATIC( QPAGELAYOUT_ORIENTATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->orientation() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setOrientation( QPageLayout::Orientation orientation )
*/
HB_FUNC_STATIC( QPAGELAYOUT_SETORIENTATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setOrientation( (QPageLayout::Orientation) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QPageLayout::Unit units() const
*/
HB_FUNC_STATIC( QPAGELAYOUT_UNITS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->units() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setUnits( QPageLayout::Unit units )
*/
HB_FUNC_STATIC( QPAGELAYOUT_SETUNITS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setUnits( (QPageLayout::Unit) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
bool setMargins( const QMarginsF & margins )
*/
HB_FUNC_STATIC( QPAGELAYOUT_SETMARGINS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMARGINSF(1) )
    {
#endif
      RBOOL( obj->setMargins( *PQMARGINSF(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
bool setLeftMargin( qreal leftMargin )
*/
HB_FUNC_STATIC( QPAGELAYOUT_SETLEFTMARGIN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RBOOL( obj->setLeftMargin( PQREAL(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
bool setRightMargin( qreal rightMargin )
*/
HB_FUNC_STATIC( QPAGELAYOUT_SETRIGHTMARGIN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RBOOL( obj->setRightMargin( PQREAL(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
bool setTopMargin( qreal topMargin )
*/
HB_FUNC_STATIC( QPAGELAYOUT_SETTOPMARGIN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RBOOL( obj->setTopMargin( PQREAL(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
bool setBottomMargin( qreal bottomMargin )
*/
HB_FUNC_STATIC( QPAGELAYOUT_SETBOTTOMMARGIN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RBOOL( obj->setBottomMargin( PQREAL(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

HB_FUNC_STATIC( QPAGELAYOUT_MARGINS )
{
  if( ISNUMPAR(0) )
  {
    /*
    QMarginsF margins() const
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
    QPageLayout * obj = (QPageLayout *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      QMarginsF * ptr = new QMarginsF( obj->margins() );
      Qt5xHb::createReturnClass(ptr, "QMARGINSF", true);
    }
#endif
  }
  else if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    /*
    QMarginsF margins( QPageLayout::Unit units ) const
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
    QPageLayout * obj = (QPageLayout *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      QMarginsF * ptr = new QMarginsF( obj->margins( (QPageLayout::Unit) hb_parni(1) ) );
      Qt5xHb::createReturnClass(ptr, "QMARGINSF", true);
    }
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QMargins marginsPoints() const
*/
HB_FUNC_STATIC( QPAGELAYOUT_MARGINSPOINTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QMargins * ptr = new QMargins( obj->marginsPoints() );
      Qt5xHb::createReturnClass(ptr, "QMARGINS", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QMargins marginsPixels( int resolution ) const
*/
HB_FUNC_STATIC( QPAGELAYOUT_MARGINSPIXELS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      QMargins * ptr = new QMargins( obj->marginsPixels( PINT(1) ) );
      Qt5xHb::createReturnClass(ptr, "QMARGINS", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setMinimumMargins( const QMarginsF & minMargins )
*/
HB_FUNC_STATIC( QPAGELAYOUT_SETMINIMUMMARGINS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMARGINSF(1) )
    {
#endif
      obj->setMinimumMargins( *PQMARGINSF(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QMarginsF minimumMargins() const
*/
HB_FUNC_STATIC( QPAGELAYOUT_MINIMUMMARGINS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QMarginsF * ptr = new QMarginsF( obj->minimumMargins() );
      Qt5xHb::createReturnClass(ptr, "QMARGINSF", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QMarginsF maximumMargins() const
*/
HB_FUNC_STATIC( QPAGELAYOUT_MAXIMUMMARGINS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QMarginsF * ptr = new QMarginsF( obj->maximumMargins() );
      Qt5xHb::createReturnClass(ptr, "QMARGINSF", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

HB_FUNC_STATIC( QPAGELAYOUT_FULLRECT )
{
  if( ISNUMPAR(0) )
  {
    /*
    QRectF fullRect() const
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
    QPageLayout * obj = (QPageLayout *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      QRectF * ptr = new QRectF( obj->fullRect() );
      Qt5xHb::createReturnClass(ptr, "QRECTF", true);
    }
#endif
  }
  else if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    /*
    QRectF fullRect( QPageLayout::Unit units ) const
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
    QPageLayout * obj = (QPageLayout *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      QRectF * ptr = new QRectF( obj->fullRect( (QPageLayout::Unit) hb_parni(1) ) );
      Qt5xHb::createReturnClass(ptr, "QRECTF", true);
    }
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QRect fullRectPoints() const
*/
HB_FUNC_STATIC( QPAGELAYOUT_FULLRECTPOINTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QRect * ptr = new QRect( obj->fullRectPoints() );
      Qt5xHb::createReturnClass(ptr, "QRECT", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QRect fullRectPixels( int resolution ) const
*/
HB_FUNC_STATIC( QPAGELAYOUT_FULLRECTPIXELS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      QRect * ptr = new QRect( obj->fullRectPixels( PINT(1) ) );
      Qt5xHb::createReturnClass(ptr, "QRECT", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

HB_FUNC_STATIC( QPAGELAYOUT_PAINTRECT )
{
  if( ISNUMPAR(0) )
  {
    /*
    QRectF paintRect() const
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
    QPageLayout * obj = (QPageLayout *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      QRectF * ptr = new QRectF( obj->paintRect() );
      Qt5xHb::createReturnClass(ptr, "QRECTF", true);
    }
#endif
  }
  else if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    /*
    QRectF paintRect( QPageLayout::Unit units ) const
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
    QPageLayout * obj = (QPageLayout *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      QRectF * ptr = new QRectF( obj->paintRect( (QPageLayout::Unit) hb_parni(1) ) );
      Qt5xHb::createReturnClass(ptr, "QRECTF", true);
    }
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QRect paintRectPoints() const
*/
HB_FUNC_STATIC( QPAGELAYOUT_PAINTRECTPOINTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QRect * ptr = new QRect( obj->paintRectPoints() );
      Qt5xHb::createReturnClass(ptr, "QRECT", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QRect paintRectPixels( int resolution ) const
*/
HB_FUNC_STATIC( QPAGELAYOUT_PAINTRECTPIXELS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageLayout * obj = (QPageLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      QRect * ptr = new QRect( obj->paintRectPixels( PINT(1) ) );
      Qt5xHb::createReturnClass(ptr, "QRECT", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

HB_FUNC_STATIC( QPAGELAYOUT_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
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
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QPAGELAYOUT_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL(NULL, hb_parl(1));
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP

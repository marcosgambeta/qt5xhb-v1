/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QSIZEF
#endif

CLASS QFontMetricsF

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD ascent
   METHOD averageCharWidth
   METHOD boundingRect
   METHOD descent
   METHOD elidedText
   METHOD height
   METHOD inFontUcs4
   METHOD leading
   METHOD lineSpacing
   METHOD lineWidth
   METHOD maxWidth
   METHOD minLeftBearing
   METHOD minRightBearing
   METHOD overlinePos
   METHOD size
   METHOD strikeOutPos
   METHOD tightBoundingRect
   METHOD underlinePos
   METHOD width
   METHOD xHeight

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QFontMetricsF
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QFontMetricsF>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QFontMetricsF>
#endif

/*
QFontMetricsF ( const QFont & font )
*/
void QFontMetricsF_new1 ()
{
  QFontMetricsF * o = new QFontMetricsF ( *PQFONT(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QFontMetricsF ( const QFont & font, QPaintDevice * paintdevice )
*/
void QFontMetricsF_new2 ()
{
  QFontMetricsF * o = new QFontMetricsF ( *PQFONT(1), PQPAINTDEVICE(2) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QFontMetricsF ( const QFontMetrics & fontMetrics )
*/
void QFontMetricsF_new3 ()
{
  QFontMetricsF * o = new QFontMetricsF ( *PQFONTMETRICS(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QFontMetricsF ( const QFontMetricsF & fm )
*/
void QFontMetricsF_new4 ()
{
  QFontMetricsF * o = new QFontMetricsF ( *PQFONTMETRICSF(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QFontMetricsF ( const QFont & font )
//[2]QFontMetricsF ( const QFont & font, QPaintDevice * paintdevice )
//[3]QFontMetricsF ( const QFontMetrics & fontMetrics )
//[4]QFontMetricsF ( const QFontMetricsF & fm )

HB_FUNC_STATIC( QFONTMETRICSF_NEW )
{
  if( ISNUMPAR(1) && ISQFONT(1) )
  {
    QFontMetricsF_new1();
  }
  else if( ISNUMPAR(2) && ISQFONT(1) && ISOBJECT(2) ) // TODO: implementar ISQPAINTDEVICE
  {
    QFontMetricsF_new2();
  }
  else if( ISNUMPAR(1) && ISQFONTMETRICS(1) )
  {
    QFontMetricsF_new3();
  }
  else if( ISNUMPAR(1) && ISQFONTMETRICSF(1) )
  {
    QFontMetricsF_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QFONTMETRICSF_DELETE )
{
  QFontMetricsF * obj = (QFontMetricsF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
qreal ascent () const
*/
HB_FUNC_STATIC( QFONTMETRICSF_ASCENT )
{
  QFontMetricsF * obj = (QFontMetricsF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQREAL( obj->ascent () );
  }
}

/*
qreal averageCharWidth () const
*/
HB_FUNC_STATIC( QFONTMETRICSF_AVERAGECHARWIDTH )
{
  QFontMetricsF * obj = (QFontMetricsF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQREAL( obj->averageCharWidth () );
  }
}

/*
QRectF boundingRect ( const QString & text ) const
*/
void QFontMetricsF_boundingRect1 ()
{
  QFontMetricsF * obj = (QFontMetricsF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRectF * ptr = new QRectF( obj->boundingRect ( PQSTRING(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

// TODO: implementar metodos [2] e [3]
//[1]QRectF boundingRect ( const QString & text ) const
//[2]QRectF boundingRect ( QChar ch ) const
//[3]QRectF boundingRect ( const QRectF & rect, int flags, const QString & text, int tabStops = 0, int * tabArray = 0 ) const

HB_FUNC_STATIC( QFONTMETRICSF_BOUNDINGRECT )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFontMetricsF_boundingRect1();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
qreal descent () const
*/
HB_FUNC_STATIC( QFONTMETRICSF_DESCENT )
{
  QFontMetricsF * obj = (QFontMetricsF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQREAL( obj->descent () );
  }
}

/*
QString elidedText ( const QString & text, Qt::TextElideMode mode, qreal width, int flags = 0 ) const
*/
HB_FUNC_STATIC( QFONTMETRICSF_ELIDEDTEXT )
{
  QFontMetricsF * obj = (QFontMetricsF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISNUM(2) && ISNUM(3) && ISOPTNUM(4) )
    {
      RQSTRING( obj->elidedText ( PQSTRING(1), (Qt::TextElideMode) hb_parni(2), PQREAL(3), OPINT(4,0) ) );
    }
    else
    {
     hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qreal height () const
*/
HB_FUNC_STATIC( QFONTMETRICSF_HEIGHT )
{
  QFontMetricsF * obj = (QFontMetricsF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQREAL( obj->height () );
  }
}

/*
bool inFontUcs4 ( uint ch ) const
*/
HB_FUNC_STATIC( QFONTMETRICSF_INFONTUCS4 )
{
  QFontMetricsF * obj = (QFontMetricsF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RBOOL( obj->inFontUcs4 ( (uint) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qreal leading () const
*/
HB_FUNC_STATIC( QFONTMETRICSF_LEADING )
{
  QFontMetricsF * obj = (QFontMetricsF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQREAL( obj->leading () );
  }
}

/*
qreal lineSpacing () const
*/
HB_FUNC_STATIC( QFONTMETRICSF_LINESPACING )
{
  QFontMetricsF * obj = (QFontMetricsF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQREAL( obj->lineSpacing () );
  }
}

/*
qreal lineWidth () const
*/
HB_FUNC_STATIC( QFONTMETRICSF_LINEWIDTH )
{
  QFontMetricsF * obj = (QFontMetricsF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQREAL( obj->lineWidth () );
  }
}

/*
qreal maxWidth () const
*/
HB_FUNC_STATIC( QFONTMETRICSF_MAXWIDTH )
{
  QFontMetricsF * obj = (QFontMetricsF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQREAL( obj->maxWidth () );
  }
}

/*
qreal minLeftBearing () const
*/
HB_FUNC_STATIC( QFONTMETRICSF_MINLEFTBEARING )
{
  QFontMetricsF * obj = (QFontMetricsF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQREAL( obj->minLeftBearing () );
  }
}

/*
qreal minRightBearing () const
*/
HB_FUNC_STATIC( QFONTMETRICSF_MINRIGHTBEARING )
{
  QFontMetricsF * obj = (QFontMetricsF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQREAL( obj->minRightBearing () );
  }
}

/*
qreal overlinePos () const
*/
HB_FUNC_STATIC( QFONTMETRICSF_OVERLINEPOS )
{
  QFontMetricsF * obj = (QFontMetricsF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQREAL( obj->overlinePos () );
  }
}

/*
QSizeF size ( int flags, const QString & text, int tabStops = 0, int * tabArray = 0 ) const
*/
HB_FUNC_STATIC( QFONTMETRICSF_SIZE )
{
  QFontMetricsF * obj = (QFontMetricsF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISCHAR(2) && ISOPTNUM(3) ) // TODO: implementar parametro 4
    {
      int par4;
      QSizeF * ptr = new QSizeF( obj->size ( PINT(1), PQSTRING(2), OPINT(3,0), &par4 ) );
      _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
      hb_storni( par4, 4 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qreal strikeOutPos () const
*/
HB_FUNC_STATIC( QFONTMETRICSF_STRIKEOUTPOS )
{
  QFontMetricsF * obj = (QFontMetricsF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQREAL( obj->strikeOutPos () );
  }
}

/*
QRectF tightBoundingRect ( const QString & text ) const
*/
HB_FUNC_STATIC( QFONTMETRICSF_TIGHTBOUNDINGRECT )
{
  QFontMetricsF * obj = (QFontMetricsF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      QRectF * ptr = new QRectF( obj->tightBoundingRect ( PQSTRING(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qreal underlinePos () const
*/
HB_FUNC_STATIC( QFONTMETRICSF_UNDERLINEPOS )
{
  QFontMetricsF * obj = (QFontMetricsF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQREAL( obj->underlinePos () );
  }
}

/*
qreal width ( const QString & text ) const
*/
HB_FUNC_STATIC( QFONTMETRICSF_WIDTH )
{
  QFontMetricsF * obj = (QFontMetricsF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      RQREAL( obj->width ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qreal xHeight () const
*/
HB_FUNC_STATIC( QFONTMETRICSF_XHEIGHT )
{
  QFontMetricsF * obj = (QFontMetricsF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQREAL( obj->xHeight () );
  }
}

HB_FUNC_STATIC( QFONTMETRICSF_NEWFROM )
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

HB_FUNC_STATIC( QFONTMETRICSF_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QFONTMETRICSF_NEWFROM );
}

HB_FUNC_STATIC( QFONTMETRICSF_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QFONTMETRICSF_NEWFROM );
}

HB_FUNC_STATIC( QFONTMETRICSF_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QFONTMETRICSF_SETSELFDESTRUCTION )
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

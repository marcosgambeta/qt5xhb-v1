/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QSIZEF
#endif

CLASS QFontMetricsF

   DATA pointer
   DATA class_id INIT Class_Id_QFontMetricsF
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD ascent
   METHOD averageCharWidth
   METHOD boundingRect1
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
#include <QFontMetricsF>
#endif

/*
QFontMetricsF ( const QFont & font )
*/
HB_FUNC_STATIC( QFONTMETRICSF_NEW1 )
{
  QFont * par1 = (QFont *) _qt5xhb_itemGetPtr(1);
  QFontMetricsF * o = new QFontMetricsF ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFontMetricsF *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}

/*
QFontMetricsF ( const QFont & font, QPaintDevice * paintdevice )
*/
HB_FUNC_STATIC( QFONTMETRICSF_NEW2 )
{
  QFont * par1 = (QFont *) _qt5xhb_itemGetPtr(1);
  QPaintDevice * par2 = (QPaintDevice *) _qt5xhb_itemGetPtr(2);
  QFontMetricsF * o = new QFontMetricsF ( *par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFontMetricsF *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}

/*
QFontMetricsF ( const QFontMetrics & fontMetrics )
*/
HB_FUNC_STATIC( QFONTMETRICSF_NEW3 )
{
  QFontMetrics * par1 = (QFontMetrics *) _qt5xhb_itemGetPtr(1);
  QFontMetricsF * o = new QFontMetricsF ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFontMetricsF *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}

/*
QFontMetricsF ( const QFontMetricsF & fm )
*/
HB_FUNC_STATIC( QFONTMETRICSF_NEW4 )
{
  QFontMetricsF * par1 = (QFontMetricsF *) _qt5xhb_itemGetPtr(1);
  QFontMetricsF * o = new QFontMetricsF ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFontMetricsF *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QFontMetricsF ( const QFont & font )
//[2]QFontMetricsF ( const QFont & font, QPaintDevice * paintdevice )
//[3]QFontMetricsF ( const QFontMetrics & fontMetrics )
//[4]QFontMetricsF ( const QFontMetricsF & fm )

HB_FUNC_STATIC( QFONTMETRICSF_NEW )
{
  if( ISNUMPAR(1) && ISQFONT(1) )
  {
    HB_FUNC_EXEC( QFONTMETRICSF_NEW1 );
  }
  else if( ISNUMPAR(2) && ISQFONT(1) && ISOBJECT(2) )
  {
    HB_FUNC_EXEC( QFONTMETRICSF_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQFONTMETRICS(1) )
  {
    HB_FUNC_EXEC( QFONTMETRICSF_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQFONTMETRICSF(1) )
  {
    HB_FUNC_EXEC( QFONTMETRICSF_NEW4 );
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
    hb_retnd( obj->ascent (  ) );
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
    hb_retnd( obj->averageCharWidth (  ) );
  }
}


/*
QRectF boundingRect ( const QString & text ) const
*/
HB_FUNC_STATIC( QFONTMETRICSF_BOUNDINGRECT1 )
{
  QFontMetricsF * obj = (QFontMetricsF *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QRectF * ptr = new QRectF( obj->boundingRect ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}




//[1]QRectF boundingRect ( const QString & text ) const
//[2]QRectF boundingRect ( QChar ch ) const
//[3]QRectF boundingRect ( const QRectF & rect, int flags, const QString & text, int tabStops = 0, int * tabArray = 0 ) const

HB_FUNC_STATIC( QFONTMETRICSF_BOUNDINGRECT )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QFONTMETRICSF_BOUNDINGRECT1 );
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
    hb_retnd( obj->descent (  ) );
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
    QString par1 = QLatin1String( hb_parc(1) );
    int par2 = hb_parni(2);
    qreal par3 = hb_parnd(3);
    hb_retc( (const char *) obj->elidedText ( par1,  (Qt::TextElideMode) par2, par3, (int) ISNIL(4)? 0 : hb_parni(4) ).toLatin1().data() );
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
    hb_retnd( obj->height (  ) );
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
    hb_retl( obj->inFontUcs4 ( (uint) hb_parni(1) ) );
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
    hb_retnd( obj->leading (  ) );
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
    hb_retnd( obj->lineSpacing (  ) );
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
    hb_retnd( obj->lineWidth (  ) );
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
    hb_retnd( obj->maxWidth (  ) );
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
    hb_retnd( obj->minLeftBearing (  ) );
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
    hb_retnd( obj->minRightBearing (  ) );
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
    hb_retnd( obj->overlinePos (  ) );
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
    QString par2 = QLatin1String( hb_parc(2) );
    int par4;
    QSizeF * ptr = new QSizeF( obj->size ( (int) hb_parni(1), par2, (int) ISNIL(3)? 0 : hb_parni(3), &par4 ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
    hb_storni( par4, 4 );
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
    hb_retnd( obj->strikeOutPos (  ) );
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
    QString par1 = QLatin1String( hb_parc(1) );
    QRectF * ptr = new QRectF( obj->tightBoundingRect ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
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
    hb_retnd( obj->underlinePos (  ) );
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
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retnd( obj->width ( par1 ) );
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
    hb_retnd( obj->xHeight (  ) );
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

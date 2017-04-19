/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QSIZE
#endif

CLASS QFontMetrics

   DATA pointer
   DATA class_id INIT Class_Id_QFontMetrics
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD ascent
   METHOD averageCharWidth
   METHOD boundingRect2
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
   METHOD width1
   METHOD width
   METHOD xHeight

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QFontMetrics
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QFontMetrics>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QFontMetrics>
#endif

/*
QFontMetrics ( const QFont & font )
*/
HB_FUNC_STATIC( QFONTMETRICS_NEW1 )
{
  QFont * par1 = (QFont *) _qt5xhb_itemGetPtr(1);
  QFontMetrics * o = new QFontMetrics ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QFontMetrics ( const QFont & font, QPaintDevice * paintdevice )
*/
HB_FUNC_STATIC( QFONTMETRICS_NEW2 )
{
  QFont * par1 = (QFont *) _qt5xhb_itemGetPtr(1);
  QPaintDevice * par2 = (QPaintDevice *) _qt5xhb_itemGetPtr(2);
  QFontMetrics * o = new QFontMetrics ( *par1, par2 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QFontMetrics ( const QFontMetrics & fm )
*/
HB_FUNC_STATIC( QFONTMETRICS_NEW3 )
{
  QFontMetrics * par1 = (QFontMetrics *) _qt5xhb_itemGetPtr(1);
  QFontMetrics * o = new QFontMetrics ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QFontMetrics ( const QFont & font )
//[2]QFontMetrics ( const QFont & font, QPaintDevice * paintdevice )
//[3]QFontMetrics ( const QFontMetrics & fm )

HB_FUNC_STATIC( QFONTMETRICS_NEW )
{
  if( ISNUMPAR(1) && ISQFONT(1) )
  {
    HB_FUNC_EXEC( QFONTMETRICS_NEW1 );
  }
  else if( ISNUMPAR(2) && ISQFONT(1) && ISOBJECT(2) )
  {
    HB_FUNC_EXEC( QFONTMETRICS_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQFONTMETRICS(1) )
  {
    HB_FUNC_EXEC( QFONTMETRICS_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QFONTMETRICS_DELETE )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int ascent () const
*/
HB_FUNC_STATIC( QFONTMETRICS_ASCENT )
{
  QFontMetrics * obj = (QFontMetrics *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->ascent (  ) );
  }
}


/*
int averageCharWidth () const
*/
HB_FUNC_STATIC( QFONTMETRICS_AVERAGECHARWIDTH )
{
  QFontMetrics * obj = (QFontMetrics *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->averageCharWidth (  ) );
  }
}



/*
QRect boundingRect ( const QString & text ) const
*/
HB_FUNC_STATIC( QFONTMETRICS_BOUNDINGRECT2 )
{
  QFontMetrics * obj = (QFontMetrics *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QRect * ptr = new QRect( obj->boundingRect ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}




//[1]QRect boundingRect ( QChar ch ) const
//[2]QRect boundingRect ( const QString & text ) const
//[3]QRect boundingRect ( int x, int y, int width, int height, int flags, const QString & text, int tabStops = 0, int * tabArray = 0 ) const
//[4]QRect boundingRect ( const QRect & rect, int flags, const QString & text, int tabStops = 0, int * tabArray = 0 ) const

HB_FUNC_STATIC( QFONTMETRICS_BOUNDINGRECT )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QFONTMETRICS_BOUNDINGRECT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int descent () const
*/
HB_FUNC_STATIC( QFONTMETRICS_DESCENT )
{
  QFontMetrics * obj = (QFontMetrics *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->descent (  ) );
  }
}


/*
QString elidedText ( const QString & text, Qt::TextElideMode mode, int width, int flags = 0 ) const
*/
HB_FUNC_STATIC( QFONTMETRICS_ELIDEDTEXT )
{
  QFontMetrics * obj = (QFontMetrics *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    int par2 = hb_parni(2);
    hb_retc( (const char *) obj->elidedText ( par1,  (Qt::TextElideMode) par2, (int) hb_parni(3), (int) ISNIL(4)? 0 : hb_parni(4) ).toLatin1().data() );
  }
}


/*
int height () const
*/
HB_FUNC_STATIC( QFONTMETRICS_HEIGHT )
{
  QFontMetrics * obj = (QFontMetrics *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->height (  ) );
  }
}



/*
bool inFontUcs4 ( uint character ) const
*/
HB_FUNC_STATIC( QFONTMETRICS_INFONTUCS4 )
{
  QFontMetrics * obj = (QFontMetrics *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->inFontUcs4 ( (uint) hb_parni(1) ) );
  }
}


/*
int leading () const
*/
HB_FUNC_STATIC( QFONTMETRICS_LEADING )
{
  QFontMetrics * obj = (QFontMetrics *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->leading (  ) );
  }
}



/*
int lineSpacing () const
*/
HB_FUNC_STATIC( QFONTMETRICS_LINESPACING )
{
  QFontMetrics * obj = (QFontMetrics *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->lineSpacing (  ) );
  }
}


/*
int lineWidth () const
*/
HB_FUNC_STATIC( QFONTMETRICS_LINEWIDTH )
{
  QFontMetrics * obj = (QFontMetrics *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->lineWidth (  ) );
  }
}


/*
int maxWidth () const
*/
HB_FUNC_STATIC( QFONTMETRICS_MAXWIDTH )
{
  QFontMetrics * obj = (QFontMetrics *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->maxWidth (  ) );
  }
}


/*
int minLeftBearing () const
*/
HB_FUNC_STATIC( QFONTMETRICS_MINLEFTBEARING )
{
  QFontMetrics * obj = (QFontMetrics *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->minLeftBearing (  ) );
  }
}


/*
int minRightBearing () const
*/
HB_FUNC_STATIC( QFONTMETRICS_MINRIGHTBEARING )
{
  QFontMetrics * obj = (QFontMetrics *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->minRightBearing (  ) );
  }
}


/*
int overlinePos () const
*/
HB_FUNC_STATIC( QFONTMETRICS_OVERLINEPOS )
{
  QFontMetrics * obj = (QFontMetrics *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->overlinePos (  ) );
  }
}



/*
QSize size ( int flags, const QString & text, int tabStops = 0, int * tabArray = 0 ) const
*/
HB_FUNC_STATIC( QFONTMETRICS_SIZE )
{
  QFontMetrics * obj = (QFontMetrics *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par2 = QLatin1String( hb_parc(2) );
    int* par4 = (int*) _qt5xhb_itemGetPtr(4);
    QSize * ptr = new QSize( obj->size ( (int) hb_parni(1), par2, (int) ISNIL(3)? 0 : hb_parni(3), par4 ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
int strikeOutPos () const
*/
HB_FUNC_STATIC( QFONTMETRICS_STRIKEOUTPOS )
{
  QFontMetrics * obj = (QFontMetrics *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->strikeOutPos (  ) );
  }
}


/*
QRect tightBoundingRect ( const QString & text ) const
*/
HB_FUNC_STATIC( QFONTMETRICS_TIGHTBOUNDINGRECT )
{
  QFontMetrics * obj = (QFontMetrics *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QRect * ptr = new QRect( obj->tightBoundingRect ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
int underlinePos () const
*/
HB_FUNC_STATIC( QFONTMETRICS_UNDERLINEPOS )
{
  QFontMetrics * obj = (QFontMetrics *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->underlinePos (  ) );
  }
}


/*
int width ( const QString & text, int len = -1 ) const
*/
HB_FUNC_STATIC( QFONTMETRICS_WIDTH1 )
{
  QFontMetrics * obj = (QFontMetrics *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retni( obj->width ( par1, (int) ISNIL(2)? -1 : hb_parni(2) ) );
  }
}



//[1]int width ( const QString & text, int len = -1 ) const
//[2]int width ( QChar ch ) const

HB_FUNC_STATIC( QFONTMETRICS_WIDTH )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QFONTMETRICS_WIDTH1 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int xHeight () const
*/
HB_FUNC_STATIC( QFONTMETRICS_XHEIGHT )
{
  QFontMetrics * obj = (QFontMetrics *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->xHeight (  ) );
  }
}



HB_FUNC_STATIC( QFONTMETRICS_NEWFROM )
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

HB_FUNC_STATIC( QFONTMETRICS_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QFONTMETRICS_NEWFROM );
}

HB_FUNC_STATIC( QFONTMETRICS_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QFONTMETRICS_NEWFROM );
}

HB_FUNC_STATIC( QFONTMETRICS_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QFONTMETRICS_SETSELFDESTRUCTION )
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
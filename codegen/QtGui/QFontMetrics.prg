$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QSIZE
#endif

CLASS QFontMetrics

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

$destructor

#pragma BEGINDUMP

$includes

/*
QFontMetrics ( const QFont & font )
*/
void QFontMetrics_new1 ()
{
  QFontMetrics * o = new QFontMetrics ( *PQFONT(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QFontMetrics ( const QFont & font, QPaintDevice * paintdevice )
*/
void QFontMetrics_new2 ()
{
  QFontMetrics * o = new QFontMetrics ( *PQFONT(1), PQPAINTDEVICE(2) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QFontMetrics ( const QFontMetrics & fm )
*/
void QFontMetrics_new3 ()
{
  QFontMetrics * o = new QFontMetrics ( *PQFONTMETRICS(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QFontMetrics ( const QFont & font )
//[2]QFontMetrics ( const QFont & font, QPaintDevice * paintdevice )
//[3]QFontMetrics ( const QFontMetrics & fm )

HB_FUNC_STATIC( QFONTMETRICS_NEW )
{
  if( ISNUMPAR(1) && ISQFONT(1) )
  {
    QFontMetrics_new1();
  }
  else if( ISNUMPAR(2) && ISQFONT(1) && ISOBJECT(2) ) // TODO: implementar ISQPAINTDEVICE
  {
    QFontMetrics_new2();
  }
  else if( ISNUMPAR(1) && ISQFONTMETRICS(1) )
  {
    QFontMetrics_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
int ascent () const
*/
HB_FUNC_STATIC( QFONTMETRICS_ASCENT )
{
  QFontMetrics * obj = (QFontMetrics *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->ascent () );
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
    RINT( obj->averageCharWidth () );
  }
}

/*
QRect boundingRect ( const QString & text ) const
*/
void QFontMetrics_boundingRect2 ()
{
  QFontMetrics * obj = (QFontMetrics *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRect * ptr = new QRect( obj->boundingRect ( PQSTRING(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

// TODO: implementar metodos
//[1]QRect boundingRect ( QChar ch ) const
//[2]QRect boundingRect ( const QString & text ) const
//[3]QRect boundingRect ( int x, int y, int width, int height, int flags, const QString & text, int tabStops = 0, int * tabArray = 0 ) const
//[4]QRect boundingRect ( const QRect & rect, int flags, const QString & text, int tabStops = 0, int * tabArray = 0 ) const

HB_FUNC_STATIC( QFONTMETRICS_BOUNDINGRECT )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFontMetrics_boundingRect2();
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
    RINT( obj->descent () );
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
    if( ISCHAR(1) && ISNUM(2) && ISNUM(3) && ISOPTNUM(4) )
    {
      RQSTRING( obj->elidedText ( PQSTRING(1), (Qt::TextElideMode) hb_parni(2), PINT(3), OPINT(4,0) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    RINT( obj->height () );
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
int leading () const
*/
HB_FUNC_STATIC( QFONTMETRICS_LEADING )
{
  QFontMetrics * obj = (QFontMetrics *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->leading () );
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
    RINT( obj->lineSpacing () );
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
    RINT( obj->lineWidth () );
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
    RINT( obj->maxWidth () );
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
    RINT( obj->minLeftBearing () );
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
    RINT( obj->minRightBearing () );
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
    RINT( obj->overlinePos () );
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
    if( ISNUM(1) && ISCHAR(2) && ISOPTNUM(3) ) // TODO: revisar e implementar parametro 4
    {
      int* par4 = (int*) _qt5xhb_itemGetPtr(4);
      QSize * ptr = new QSize( obj->size ( PINT(1), PQSTRING(2), OPINT(3,0), par4 ) );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    RINT( obj->strikeOutPos () );
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
    if( ISCHAR(1) )
    {
      QRect * ptr = new QRect( obj->tightBoundingRect ( PQSTRING(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    RINT( obj->underlinePos () );
  }
}

/*
int width ( const QString & text, int len = -1 ) const
*/
void QFontMetrics_width1 ()
{
  QFontMetrics * obj = (QFontMetrics *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->width ( PQSTRING(1), OPINT(2,-1) ) );
  }
}

//[1]int width ( const QString & text, int len = -1 ) const
//[2]int width ( QChar ch ) const // TODO: implementar

HB_FUNC_STATIC( QFONTMETRICS_WIDTH )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  {
    QFontMetrics_width1();
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
    RINT( obj->xHeight () );
  }
}

$extraMethods

#pragma ENDDUMP

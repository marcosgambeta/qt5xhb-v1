$header

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

$destructor

#pragma BEGINDUMP

$includes

/*
QFontMetricsF ( const QFont & font )
*/
$internalConstructor=|new1|const QFont &

/*
QFontMetricsF ( const QFont & font, QPaintDevice * paintdevice )
*/
$internalConstructor=|new2|const QFont &,QPaintDevice *

/*
QFontMetricsF ( const QFontMetrics & fontMetrics )
*/
$internalConstructor=|new3|const QFontMetrics &

/*
QFontMetricsF ( const QFontMetricsF & fm )
*/
$internalConstructor=|new4|const QFontMetricsF &

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

$deleteMethod

/*
qreal ascent () const
*/
$method=|qreal|ascent|

/*
qreal averageCharWidth () const
*/
$method=|qreal|averageCharWidth|

/*
QRectF boundingRect ( const QString & text ) const
*/
$internalMethod=|QRectF|boundingRect,boundingRect1|const QString &

/*
QRectF boundingRect ( QChar ch ) const
*/
$internalMethod=|QRectF|boundingRect,boundingRect2|QChar

/*
QRectF boundingRect ( const QRectF & rect, int flags, const QString & text, int tabStops = 0, int * tabArray = 0 ) const
*/
$internalMethod=|QRectF|boundingRect,boundingRect3|const QRectF &,int,const QString &,int=0,int *=0

%% TODO: implementar metodo [3]
//[1]QRectF boundingRect ( const QString & text ) const
//[2]QRectF boundingRect ( QChar ch ) const
//[3]QRectF boundingRect ( const QRectF & rect, int flags, const QString & text, int tabStops = 0, int * tabArray = 0 ) const

HB_FUNC_STATIC( QFONTMETRICSF_BOUNDINGRECT )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFontMetricsF_boundingRect1();
  }
  else if( ISNUMPAR(1) && ISQCHAR(1) )
  {
    QFontMetricsF_boundingRect2();
  }
  else if( ISBETWEEN(3,5) && ISQRECTF(1) && ISNUM(2) && ISCHAR(3) && ISOPTNUM(4) && iSOPTARRAY(5) )
  {
    QFontMetricsF_boundingRect3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
qreal descent () const
*/
$method=|qreal|descent|

/*
QString elidedText ( const QString & text, Qt::TextElideMode mode, qreal width, int flags = 0 ) const
*/
$method=|QString|elidedText|const QString &,Qt::TextElideMode,qreal,int=0

/*
qreal height () const
*/
$method=|qreal|height|

/*
bool inFontUcs4 ( uint ch ) const
*/
$method=|bool|inFontUcs4|uint

/*
qreal leading () const
*/
$method=|qreal|leading|

/*
qreal lineSpacing () const
*/
$method=|qreal|lineSpacing|

/*
qreal lineWidth () const
*/
$method=|qreal|lineWidth|

/*
qreal maxWidth () const
*/
$method=|qreal|maxWidth|

/*
qreal minLeftBearing () const
*/
$method=|qreal|minLeftBearing|

/*
qreal minRightBearing () const
*/
$method=|qreal|minRightBearing|

/*
qreal overlinePos () const
*/
$method=|qreal|overlinePos|

/*
QSizeF size ( int flags, const QString & text, int tabStops = 0, int * tabArray = 0 ) const
*/
$method=|QSizeF|size|int,const QString &,int=0,int *=0

/*
qreal strikeOutPos () const
*/
$method=|qreal|strikeOutPos|

/*
QRectF tightBoundingRect ( const QString & text ) const
*/
$method=|QRectF|tightBoundingRect|const QString &

/*
qreal underlinePos () const
*/
$method=|qreal|underlinePos|

/*
qreal width ( const QString & text ) const
*/
$method=|qreal|width|const QString &

/*
qreal xHeight () const
*/
$method=|qreal|xHeight|

$extraMethods

#pragma ENDDUMP

%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

   METHOD new
   METHOD delete

   METHOD animated
   METHOD boundsOnElement
   METHOD defaultSize
   METHOD elementExists
   METHOD framesPerSecond
   METHOD isValid
   METHOD load
   METHOD matrixForElement
   METHOD render
   METHOD setFramesPerSecond
   METHOD setViewBox
   METHOD viewBox
   METHOD viewBoxF

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSvgRenderer ( QObject * parent = 0 )
$internalConstructor=|new1|QObject *=0

$prototype=QSvgRenderer ( const QString & filename, QObject * parent = 0 )
$internalConstructor=|new2|const QString &,QObject *=0

$prototype=QSvgRenderer ( const QByteArray & contents, QObject * parent = 0 )
$internalConstructor=|new3|const QByteArray &,QObject *=0

$prototype=QSvgRenderer ( QXmlStreamReader * contents, QObject * parent = 0 )
$internalConstructor=|new4|QXmlStreamReader *,QObject *=0

//[1]QSvgRenderer ( QObject * parent = 0 )
//[2]QSvgRenderer ( const QString & filename, QObject * parent = 0 )
//[3]QSvgRenderer ( const QByteArray & contents, QObject * parent = 0 )
//[4]QSvgRenderer ( QXmlStreamReader * contents, QObject * parent = 0 )

HB_FUNC_STATIC( QSVGRENDERER_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QSvgRenderer_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQOBJECT(2) )
  {
    QSvgRenderer_new2();
  }
  else if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && ISOPTQOBJECT(2) )
  {
    QSvgRenderer_new3();
  }
  else if( ISBETWEEN(1,2) && ISQXMLSTREAMREADER(1) && ISOPTQOBJECT(2) )
  {
    QSvgRenderer_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool animated () const
$method=|bool|animated|

$prototype=QRectF boundsOnElement ( const QString & id ) const
$method=|QRectF|boundsOnElement|const QString &

$prototype=QSize defaultSize () const
$method=|QSize|defaultSize|

$prototype=bool elementExists ( const QString & id ) const
$method=|bool|elementExists|const QString &

$prototype=int framesPerSecond () const
$method=|int|framesPerSecond|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=QMatrix matrixForElement ( const QString & id ) const
$method=|QMatrix|matrixForElement|const QString &

$prototype=void setFramesPerSecond ( int num )
$method=|void|setFramesPerSecond|int

$prototype=void setViewBox ( const QRect & viewbox )
$internalMethod=|void|setViewBox,setViewBox1|const QRect &

$prototype=void setViewBox ( const QRectF & viewbox )
$internalMethod=|void|setViewBox,setViewBox2|const QRectF &

//[1]void setViewBox ( const QRect & viewbox )
//[2]void setViewBox ( const QRectF & viewbox )

HB_FUNC_STATIC( QSVGRENDERER_SETVIEWBOX )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QSvgRenderer_setViewBox1();
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QSvgRenderer_setViewBox2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QRect viewBox () const
$method=|QRect|viewBox|

$prototype=QRectF viewBoxF () const
$method=|QRectF|viewBoxF|

$prototype=bool load ( const QString & filename )
$internalMethod=|bool|load,load1|const QString &

$prototype=bool load ( const QByteArray & contents )
$internalMethod=|bool|load,load2|const QByteArray &

$prototype=bool load ( QXmlStreamReader * contents )
$internalMethod=|bool|load,load3|QXmlStreamReader *

//[1]bool load ( const QString & filename )
//[2]bool load ( const QByteArray & contents )
//[3]bool load ( QXmlStreamReader * contents )

HB_FUNC_STATIC( QSVGRENDERER_LOAD )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSvgRenderer_load1();
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QSvgRenderer_load2();
  }
  else if( ISNUMPAR(1) && ISQXMLSTREAMREADER(1) )
  {
    QSvgRenderer_load3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void render ( QPainter * painter )
$internalMethod=|void|render,render1|QPainter *

$prototype=void render ( QPainter * painter, const QRectF & bounds )
$internalMethod=|void|render,render2|QPainter *,const QRectF &

$prototype=void render ( QPainter * painter, const QString & elementId, const QRectF & bounds = QRectF() )
$internalMethod=|void|render,render3|QPainter *,const QString &,const QRectF &=QRectF()

//[1]void render ( QPainter * painter )
//[2]void render ( QPainter * painter, const QRectF & bounds )
//[3]void render ( QPainter * painter, const QString & elementId, const QRectF & bounds = QRectF() )

HB_FUNC_STATIC( QSVGRENDERER_RENDER )
{
  if( ISNUMPAR(1) && ISQPAINTER(1) )
  {
    QSvgRenderer_render1();
  }
  else if( ISNUMPAR(2) && ISQPAINTER(1) && ISQRECTF(2) )
  {
    QSvgRenderer_render2();
  }
  else if( ISBETWEEN(2,3) && ISQPAINTER(1) && ISCHAR(2) && (ISQRECTF(3)||ISNIL(3)) )
  {
    QSvgRenderer_render3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$beginSignals
$signal=|repaintNeeded()
$endSignals

#pragma ENDDUMP

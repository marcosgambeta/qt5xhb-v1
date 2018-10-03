%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QFontMetrics ( const QFont & font )
$internalConstructor=|new1|const QFont &

$prototype=QFontMetrics ( const QFont & font, QPaintDevice * paintdevice )
$internalConstructor=|new2|const QFont &,QPaintDevice *

$prototype=QFontMetrics ( const QFontMetrics & fm )
$internalConstructor=|new3|const QFontMetrics &

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

$prototype=int ascent () const
$method=|int|ascent|

$prototype=int averageCharWidth () const
$method=|int|averageCharWidth|

$prototype=QRect boundingRect ( QChar ch ) const
$internalMethod=|QRect|boundingRect,boundingRect1|QChar

$prototype=QRect boundingRect ( const QString & text ) const
$internalMethod=|QRect|boundingRect,boundingRect2|const QString &

$prototype=QRect boundingRect ( int x, int y, int width, int height, int flags, const QString & text, int tabStops = 0, int * tabArray = 0 ) const
%% TODO: implementar
%% $internalMethod=|QRect|boundingRect,boundingRect3|int,int,int,int,int,const QString &,int=0,int *=0

$prototype=QRect boundingRect ( const QRect & rect, int flags, const QString & text, int tabStops = 0, int * tabArray = 0 ) const
%% TODO: implementar
%% $internalMethod=|QRect|boundingRect,boundingRect4|const QRect &,int,const QString &,int=0,int *=0

%% TODO: implementar metodos [3] e [4]
//[1]QRect boundingRect ( QChar ch ) const
//[2]QRect boundingRect ( const QString & text ) const
//[3]QRect boundingRect ( int x, int y, int width, int height, int flags, const QString & text, int tabStops = 0, int * tabArray = 0 ) const
//[4]QRect boundingRect ( const QRect & rect, int flags, const QString & text, int tabStops = 0, int * tabArray = 0 ) const

HB_FUNC_STATIC( QFONTMETRICS_BOUNDINGRECT )
{
  if( ISNUMPAR(1) && ISQCHAR(1) )
  {
    QFontMetrics_boundingRect1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFontMetrics_boundingRect2();
  }
%%  else if( ISBETWEEN(6,8) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISCHAR(6) && (ISNUM(7)||ISNIL(7)) && (ISARRAY(8)||ISNIL(8)) )
%%  {
%%    QFontMetrics_boundingRect3();
%%  }
%%  else if( ISBETWEEN(3,5) && ISQRECT(1) && ISNUM(2) && ISCHAR(3) && (ISNUM(4)||ISNIL(4)) && (ISARRAY(5)||ISNIL(5)) )
%%  {
%%    QFontMetrics_boundingRect4();
%%  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=boundingRect

$prototype=int descent () const
$method=|int|descent|

$prototype=QString elidedText ( const QString & text, Qt::TextElideMode mode, int width, int flags = 0 ) const
$method=|QString|elidedText|const QString &,Qt::TextElideMode,int,int=0

$prototype=int height () const
$method=|int|height|

$prototype=bool inFontUcs4 ( uint character ) const
$method=|bool|inFontUcs4|uint

$prototype=int leading () const
$method=|int|leading|

$prototype=int lineSpacing () const
$method=|int|lineSpacing|

$prototype=int lineWidth () const
$method=|int|lineWidth|

$prototype=int maxWidth () const
$method=|int|maxWidth|

$prototype=int minLeftBearing () const
$method=|int|minLeftBearing|

$prototype=int minRightBearing () const
$method=|int|minRightBearing|

$prototype=int overlinePos () const
$method=|int|overlinePos|

$prototype=QSize size ( int flags, const QString & text, int tabStops = 0, int * tabArray = 0 ) const
%% TODO: parametro 4 = array
$method=|QSize|size|int,const QString &,int=0,int *=0

$prototype=int strikeOutPos () const
$method=|int|strikeOutPos|

$prototype=QRect tightBoundingRect ( const QString & text ) const
$method=|QRect|tightBoundingRect|const QString &

$prototype=int underlinePos () const
$method=|int|underlinePos|

$prototype=int width ( const QString & text, int len = -1 ) const
$internalMethod=|int|width,width1|const QString &,int=-1

$prototype=int width ( QChar ch ) const
$internalMethod=|int|width,width2|QChar

//[1]int width ( const QString & text, int len = -1 ) const
//[2]int width ( QChar ch ) const

HB_FUNC_STATIC( QFONTMETRICS_WIDTH )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  {
    QFontMetrics_width1();
  }
  else if( ISNUMPAR(1) && ISQCHAR(1) )
  {
    QFontMetrics_width2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=width

$prototype=int xHeight () const
$method=|int|xHeight|

$extraMethods

#pragma ENDDUMP

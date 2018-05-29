%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClass

   METHOD new
   METHOD delete
   METHOD isValid
   METHOD rect
   METHOD width
   METHOD ascent
   METHOD descent
   METHOD height
   METHOD textDirection
   METHOD setWidth
   METHOD setAscent
   METHOD setDescent
   METHOD textPosition
   METHOD formatIndex
   METHOD format

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTextInlineObject(int i, QTextEngine *e)
%% TODO: classe QTextEngine
%% $internalConstructor=|new1|int,QTextEngine *

$prototype=QTextInlineObject()
$internalConstructor=|new2|

//[1]QTextInlineObject(int i, QTextEngine *e)
//[2]QTextInlineObject()

HB_FUNC_STATIC( QTEXTINLINEOBJECT_NEW )
{
%%  if( ISNUMPAR(2) && ISNUM(1) && ISOBJECT(2) )
%%  {
%%    QTextInlineObject_new1();
%%  }
%%  else if( ISNUMPAR(0) )
  if( ISNUMPAR(0) )
  {
    QTextInlineObject_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=QRectF rect() const
$method=|QRectF|rect|

$prototype=qreal width() const
$method=|qreal|width|

$prototype=qreal ascent() const
$method=|qreal|ascent|

$prototype=qreal descent() const
$method=|qreal|descent|

$prototype=qreal height() const
$method=|qreal|height|

$prototype=Qt::LayoutDirection textDirection() const
$method=|Qt::LayoutDirection|textDirection|

$prototype=void setWidth(qreal w)
$method=|void|setWidth|qreal

$prototype=void setAscent(qreal a)
$method=|void|setAscent|qreal

$prototype=void setDescent(qreal d)
$method=|void|setDescent|qreal

$prototype=int textPosition() const
$method=|int|textPosition|

$prototype=int formatIndex() const
$method=|int|formatIndex|

$prototype=QTextFormat format() const
$method=|QTextFormat|format|

$extraMethods

#pragma ENDDUMP

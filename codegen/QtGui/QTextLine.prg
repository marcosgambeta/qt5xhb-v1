%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTextLine()
$constructor=|new|

$deleteMethod

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=QRectF rect() const
$method=|QRectF|rect|

$prototype=qreal x() const
$method=|qreal|x|

$prototype=qreal y() const
$method=|qreal|y|

$prototype=qreal width() const
$method=|qreal|width|

$prototype=qreal ascent() const
$method=|qreal|ascent|

$prototype=qreal descent() const
$method=|qreal|descent|

$prototype=qreal height() const
$method=|qreal|height|

$prototype=qreal leading() const
$method=|qreal|leading|

$prototype=void setLeadingIncluded(bool included)
$method=|void|setLeadingIncluded|bool

$prototype=bool leadingIncluded() const
$method=|bool|leadingIncluded|

$prototype=qreal naturalTextWidth() const
$method=|qreal|naturalTextWidth|

$prototype=qreal horizontalAdvance() const
$method=|qreal|horizontalAdvance|

$prototype=QRectF naturalTextRect() const
$method=|QRectF|naturalTextRect|

$prototype=qreal cursorToX(int *cursorPos, Edge edge = Leading) const
$internalMethod=|qreal|cursorToX,cursorToX1|int *,QTextLine::Edge=QTextLine::Leading

$prototype=qreal cursorToX(int cursorPos, Edge edge = Leading) const
$internalMethod=|qreal|cursorToX,cursorToX2|int,QTextLine::Edge=QTextLine::Leading

//[1]qreal cursorToX(int *cursorPos, Edge edge = Leading) const
//[2]qreal cursorToX(int cursorPos, Edge edge = Leading) const

%% TODO: resolver conflito
HB_FUNC_STATIC( QTEXTLINE_CURSORTOX )
{
  if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
  {
    QTextLine_cursorToX1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
  {
    QTextLine_cursorToX2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=cursorToX

$prototype=int xToCursor(qreal x, CursorPosition = CursorBetweenCharacters) const
$method=|int|xToCursor|qreal,QTextLine::CursorPosition=QTextLine::CursorBetweenCharacters

$prototype=void setLineWidth(qreal width)
$method=|void|setLineWidth|qreal

$prototype=void setNumColumns(int columns)
$internalMethod=|void|setNumColumns,setNumColumns1|int

$prototype=void setNumColumns(int columns, qreal alignmentWidth)
$internalMethod=|void|setNumColumns,setNumColumns2|int,qreal

//[1]void setNumColumns(int columns)
//[2]void setNumColumns(int columns, qreal alignmentWidth)

HB_FUNC_STATIC( QTEXTLINE_SETNUMCOLUMNS )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QTextLine_setNumColumns1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QTextLine_setNumColumns2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setNumColumns

$prototype=void setPosition(const QPointF &pos)
$method=|void|setPosition|const QPointF &

$prototype=QPointF position() const
$method=|QPointF|position|

$prototype=int textStart() const
$method=|int|textStart|

$prototype=int textLength() const
$method=|int|textLength|

$prototype=int lineNumber() const
$method=|int|lineNumber|

$prototype=void draw(QPainter *p, const QPointF &point, const QTextLayout::FormatRange *selection = 0) const
%% TODO: implementar
%% $method=|void|draw|QPainter *,const QPointF &,const QTextLayout::FormatRange *=0

$extraMethods

#pragma ENDDUMP

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QPOINTF
#endif

CLASS QTextLine

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isValid
   METHOD rect
   METHOD x
   METHOD y
   METHOD width
   METHOD ascent
   METHOD descent
   METHOD height
   METHOD leading
   METHOD setLeadingIncluded
   METHOD leadingIncluded
   METHOD naturalTextWidth
   METHOD horizontalAdvance
   METHOD naturalTextRect
   METHOD cursorToX
   METHOD xToCursor
   METHOD setLineWidth
   METHOD setNumColumns
   METHOD setPosition
   METHOD position
   METHOD textStart
   METHOD textLength
   METHOD lineNumber
   METHOD draw

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
QTextLine()
*/
$constructor=|new|

$deleteMethod

/*
bool isValid() const
*/
$method=|bool|isValid|

/*
QRectF rect() const
*/
$method=|QRectF|rect|

/*
qreal x() const
*/
$method=|qreal|x|

/*
qreal y() const
*/
$method=|qreal|y|

/*
qreal width() const
*/
$method=|qreal|width|

/*
qreal ascent() const
*/
$method=|qreal|ascent|

/*
qreal descent() const
*/
$method=|qreal|descent|

/*
qreal height() const
*/
$method=|qreal|height|

/*
qreal leading() const
*/
$method=|qreal|leading|

/*
void setLeadingIncluded(bool included)
*/
$method=|void|setLeadingIncluded|bool

/*
bool leadingIncluded() const
*/
$method=|bool|leadingIncluded|

/*
qreal naturalTextWidth() const
*/
$method=|qreal|naturalTextWidth|

/*
qreal horizontalAdvance() const
*/
$method=|qreal|horizontalAdvance|

/*
QRectF naturalTextRect() const
*/
$method=|QRectF|naturalTextRect|

/*
qreal cursorToX(int *cursorPos, Edge edge = Leading) const
*/
$internalMethod=|qreal|cursorToX,cursorToX1|int *,QTextLine::Edge=QTextLine::Leading

/*
qreal cursorToX(int cursorPos, Edge edge = Leading) const
*/
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

/*
int xToCursor(qreal x, CursorPosition = CursorBetweenCharacters) const
*/
$method=|int|xToCursor|qreal,QTextLine::CursorPosition=QTextLine::CursorBetweenCharacters

/*
void setLineWidth(qreal width)
*/
$method=|void|setLineWidth|qreal

/*
void setNumColumns(int columns)
*/
$internalMethod=|void|setNumColumns,setNumColumns1|int

/*
void setNumColumns(int columns, qreal alignmentWidth)
*/
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

/*
void setPosition(const QPointF &pos)
*/
$method=|void|setPosition|const QPointF &

/*
QPointF position() const
*/
$method=|QPointF|position|

/*
int textStart() const
*/
$method=|int|textStart|

/*
int textLength() const
*/
$method=|int|textLength|

/*
int lineNumber() const
*/
$method=|int|lineNumber|

/*
void draw(QPainter *p, const QPointF &point, const QTextLayout::FormatRange *selection = 0) const
*/
$method=|void|draw|QPainter *,const QPointF &,const QTextLayout::FormatRange *=0

$extraMethods

#pragma ENDDUMP

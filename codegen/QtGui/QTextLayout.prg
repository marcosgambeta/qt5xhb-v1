%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

#include <QTextCursor>
#include <QTextBlock>

$prototype=QTextLayout()
$internalConstructor=|new1|

$prototype=QTextLayout(const QString& text)
$internalConstructor=|new2|const QString &

$prototype=QTextLayout(const QString& text, const QFont &font, QPaintDevice *paintdevice = 0)
$internalConstructor=|new3|const QString &,const QFont &,QPaintDevice *=0

$prototype=QTextLayout(const QTextBlock &b)
$internalConstructor=|new4|const QTextBlock &

//[1]QTextLayout()
//[2]QTextLayout(const QString& text)
//[3]QTextLayout(const QString& text, const QFont &font, QPaintDevice *paintdevice = 0)
//[4]QTextLayout(const QTextBlock &b)

HB_FUNC_STATIC( QTEXTLAYOUT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTextLayout_new1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QTextLayout_new2();
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISQFONT(2) && (ISOBJECT(3)||ISNIL(3)) )
  {
    QTextLayout_new3();
  }
  else if( ISNUMPAR(1) && ISQTEXTBLOCK(1) )
  {
    QTextLayout_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void setFont(const QFont &f)
$method=|void|setFont|const QFont &

$prototype=QFont font() const
$method=|QFont|font|

$prototype=void setRawFont(const QRawFont &rawFont)
$method=|void|setRawFont|const QRawFont &

$prototype=void setText(const QString& string)
$method=|void|setText|const QString &

$prototype=QString text() const
$method=|QString|text|

$prototype=void setTextOption(const QTextOption &option)
$method=|void|setTextOption|const QTextOption &

$prototype=const QTextOption &textOption() const
$method=|const QTextOption &|textOption|

$prototype=void setPreeditArea(int position, const QString &text)
$method=|void|setPreeditArea|int,const QString &

$prototype=int preeditAreaPosition() const
$method=|int|preeditAreaPosition|

$prototype=QString preeditAreaText() const
$method=|QString|preeditAreaText|

$prototype=void clearAdditionalFormats()
$method=|void|clearAdditionalFormats|

$prototype=void setCacheEnabled(bool enable)
$method=|void|setCacheEnabled|bool

$prototype=bool cacheEnabled() const
$method=|bool|cacheEnabled|

$prototype=void setCursorMoveStyle(Qt::CursorMoveStyle style)
$method=|void|setCursorMoveStyle|Qt::CursorMoveStyle

$prototype=Qt::CursorMoveStyle cursorMoveStyle() const
$method=|Qt::CursorMoveStyle|cursorMoveStyle|

$prototype=void beginLayout()
$method=|void|beginLayout|

$prototype=void endLayout()
$method=|void|endLayout|

$prototype=void clearLayout()
$method=|void|clearLayout|

$prototype=QTextLine createLine()
$method=|QTextLine|createLine|

$prototype=int lineCount() const
$method=|int|lineCount|

$prototype=QTextLine lineAt(int i) const
$method=|QTextLine|lineAt|int

$prototype=QTextLine lineForTextPosition(int pos) const
$method=|QTextLine|lineForTextPosition|int

$prototype=bool isValidCursorPosition(int pos) const
$method=|bool|isValidCursorPosition|int

$prototype=int nextCursorPosition(int oldPos, CursorMode mode = SkipCharacters) const
$method=|int|nextCursorPosition|int,QTextLayout::CursorMode=QTextLayout::SkipCharacters

$prototype=int previousCursorPosition(int oldPos, CursorMode mode = SkipCharacters) const
$method=|int|previousCursorPosition|int,QTextLayout::CursorMode=QTextLayout::SkipCharacters

$prototype=int leftCursorPosition(int oldPos) const
$method=|int|leftCursorPosition|int

$prototype=int rightCursorPosition(int oldPos) const
$method=|int|rightCursorPosition|int

$prototype=void drawCursor(QPainter *p, const QPointF &pos, int cursorPosition) const
$internalMethod=|void|drawCursor,drawCursor1|QPainter *,const QPointF &,int

$prototype=void drawCursor(QPainter *p, const QPointF &pos, int cursorPosition, int width) const
$internalMethod=|void|drawCursor,drawCursor2|QPainter *,const QPointF &,int,int

//[1]void drawCursor(QPainter *p, const QPointF &pos, int cursorPosition) const
//[2]void drawCursor(QPainter *p, const QPointF &pos, int cursorPosition, int width) const

HB_FUNC_STATIC( QTEXTLAYOUT_DRAWCURSOR )
{
  if( ISNUMPAR(3) && ISQPAINTER(1) && ISQPOINTF(2) && ISNUM(3) )
  {
    QTextLayout_drawCursor1();
  }
  else if( ISNUMPAR(4) && ISQPAINTER(1) && ISQPOINTF(2) && ISNUM(3) && ISNUM(4) )
  {
    QTextLayout_drawCursor2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=drawCursor

$prototype=QPointF position() const
$method=|QPointF|position|

$prototype=void setPosition(const QPointF &p)
$method=|void|setPosition|const QPointF &

$prototype=QRectF boundingRect() const
$method=|QRectF|boundingRect|

$prototype=qreal minimumWidth() const
$method=|qreal|minimumWidth|

$prototype=qreal maximumWidth() const
$method=|qreal|maximumWidth|

$prototype=QTextEngine *engine() const
%% TODO: implementar ?
%% $method=|QTextEngine *|engine|

$prototype=void setFlags(int flags)
$method=|void|setFlags|int

$extraMethods

#pragma ENDDUMP

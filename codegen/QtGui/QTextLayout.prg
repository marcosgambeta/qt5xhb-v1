$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QFONT
REQUEST QTEXTOPTION
REQUEST QTEXTLINE
REQUEST QPOINTF
REQUEST QRECTF
REQUEST QTEXTENGINE
#endif

CLASS QTextLayout

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD setFont
   METHOD font
   METHOD setRawFont
   METHOD setText
   METHOD text
   METHOD setTextOption
   METHOD textOption
   METHOD setPreeditArea
   METHOD preeditAreaPosition
   METHOD preeditAreaText
   METHOD clearAdditionalFormats
   METHOD setCacheEnabled
   METHOD cacheEnabled
   METHOD setCursorMoveStyle
   METHOD cursorMoveStyle
   METHOD beginLayout
   METHOD endLayout
   METHOD clearLayout
   METHOD createLine
   METHOD lineCount
   METHOD lineAt
   METHOD lineForTextPosition
   METHOD isValidCursorPosition
   METHOD nextCursorPosition
   METHOD previousCursorPosition
   METHOD leftCursorPosition
   METHOD rightCursorPosition
   METHOD drawCursor
   METHOD position
   METHOD setPosition
   METHOD boundingRect
   METHOD minimumWidth
   METHOD maximumWidth
   METHOD engine
   METHOD setFlags

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

#include <QTextCursor>
#include <QTextBlock>

/*
QTextLayout()
*/
$internalConstructor=|new1|

/*
QTextLayout(const QString& text)
*/
$internalConstructor=|new2|const QString &

/*
QTextLayout(const QString& text, const QFont &font, QPaintDevice *paintdevice = 0)
*/
$internalConstructor=|new3|const QString &,const QFont &,QPaintDevice *=0

/*
QTextLayout(const QTextBlock &b)
*/
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

/*
void setFont(const QFont &f)
*/
$method=|void|setFont|const QFont &

/*
QFont font() const
*/
$method=|QFont|font|

/*
void setRawFont(const QRawFont &rawFont)
*/
$method=|void|setRawFont|const QRawFont &

/*
void setText(const QString& string)
*/
$method=|void|setText|const QString &

/*
QString text() const
*/
$method=|QString|text|

/*
void setTextOption(const QTextOption &option)
*/
$method=|void|setTextOption|const QTextOption &

/*
const QTextOption &textOption() const
*/
$method=|const QTextOption &|textOption|

/*
void setPreeditArea(int position, const QString &text)
*/
$method=|void|setPreeditArea|int,const QString &

/*
int preeditAreaPosition() const
*/
$method=|int|preeditAreaPosition|

/*
QString preeditAreaText() const
*/
$method=|QString|preeditAreaText|

/*
void clearAdditionalFormats()
*/
$method=|void|clearAdditionalFormats|

/*
void setCacheEnabled(bool enable)
*/
$method=|void|setCacheEnabled|bool

/*
bool cacheEnabled() const
*/
$method=|bool|cacheEnabled|

/*
void setCursorMoveStyle(Qt::CursorMoveStyle style)
*/
$method=|void|setCursorMoveStyle|Qt::CursorMoveStyle

/*
Qt::CursorMoveStyle cursorMoveStyle() const
*/
$method=|Qt::CursorMoveStyle|cursorMoveStyle|

/*
void beginLayout()
*/
$method=|void|beginLayout|

/*
void endLayout()
*/
$method=|void|endLayout|

/*
void clearLayout()
*/
$method=|void|clearLayout|

/*
QTextLine createLine()
*/
$method=|QTextLine|createLine|

/*
int lineCount() const
*/
$method=|int|lineCount|

/*
QTextLine lineAt(int i) const
*/
$method=|QTextLine|lineAt|int

/*
QTextLine lineForTextPosition(int pos) const
*/
$method=|QTextLine|lineForTextPosition|int

/*
bool isValidCursorPosition(int pos) const
*/
$method=|bool|isValidCursorPosition|int

/*
int nextCursorPosition(int oldPos, CursorMode mode = SkipCharacters) const
*/
$method=|int|nextCursorPosition|int,QTextLayout::CursorMode=QTextLayout::SkipCharacters

/*
int previousCursorPosition(int oldPos, CursorMode mode = SkipCharacters) const
*/
$method=|int|previousCursorPosition|int,QTextLayout::CursorMode=QTextLayout::SkipCharacters

/*
int leftCursorPosition(int oldPos) const
*/
$method=|int|leftCursorPosition|int

/*
int rightCursorPosition(int oldPos) const
*/
$method=|int|rightCursorPosition|int

/*
void drawCursor(QPainter *p, const QPointF &pos, int cursorPosition) const
*/
$method=|void|drawCursor,drawCursor1|QPainter *,const QPointF &,int

/*
void drawCursor(QPainter *p, const QPointF &pos, int cursorPosition, int width) const
*/
$method=|void|drawCursor,drawCursor2|QPainter *,const QPointF &,int,int

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

/*
QPointF position() const
*/
$method=|QPointF|position|

/*
void setPosition(const QPointF &p)
*/
$method=|void|setPosition|const QPointF &

/*
QRectF boundingRect() const
*/
$method=|QRectF|boundingRect|

/*
qreal minimumWidth() const
*/
$method=|qreal|minimumWidth|

/*
qreal maximumWidth() const
*/
$method=|qreal|maximumWidth|

/*
QTextEngine *engine() const
*/
$method=|QTextEngine *|engine|

/*
void setFlags(int flags)
*/
$method=|void|setFlags|int

$extraMethods

#pragma ENDDUMP

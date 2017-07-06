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

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
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
   METHOD drawCursor1
   METHOD drawCursor2
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
HB_FUNC_STATIC( QTEXTLAYOUT_NEW1 )
{
  QTextLayout * o = new QTextLayout ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTextLayout(const QString& text)
*/
HB_FUNC_STATIC( QTEXTLAYOUT_NEW2 )
{
  QTextLayout * o = new QTextLayout ( PQSTRING(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTextLayout(const QString& text, const QFont &font, QPaintDevice *paintdevice = 0)
*/
HB_FUNC_STATIC( QTEXTLAYOUT_NEW3 )
{
  QPaintDevice * par3 = ISNIL(3)? 0 : (QPaintDevice *) _qt5xhb_itemGetPtr(3);
  QTextLayout * o = new QTextLayout ( PQSTRING(1), *PQFONT(2), par3 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTextLayout(const QTextBlock &b)
*/
HB_FUNC_STATIC( QTEXTLAYOUT_NEW4 )
{
  QTextLayout * o = new QTextLayout ( *PQTEXTBLOCK(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QTextLayout()
//[2]QTextLayout(const QString& text)
//[3]QTextLayout(const QString& text, const QFont &font, QPaintDevice *paintdevice = 0)
//[4]QTextLayout(const QTextBlock &b)

HB_FUNC_STATIC( QTEXTLAYOUT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTEXTLAYOUT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QTEXTLAYOUT_NEW2 );
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISQFONT(2) && (ISOBJECT(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QTEXTLAYOUT_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQTEXTBLOCK(1) )
  {
    HB_FUNC_EXEC( QTEXTLAYOUT_NEW4 );
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
HB_FUNC_STATIC( QTEXTLAYOUT_SETFONT )
{
  QTextLayout * obj = (QTextLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFont ( *PQFONT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QFont font() const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_FONT )
{
  QTextLayout * obj = (QTextLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QFont * ptr = new QFont( obj->font () );
    _qt5xhb_createReturnClass ( ptr, "QFONT", true );
  }
}


/*
void setRawFont(const QRawFont &rawFont)
*/
HB_FUNC_STATIC( QTEXTLAYOUT_SETRAWFONT )
{
  QTextLayout * obj = (QTextLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRawFont ( *PQRAWFONT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setText(const QString& string)
*/
HB_FUNC_STATIC( QTEXTLAYOUT_SETTEXT )
{
  QTextLayout * obj = (QTextLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setText ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString text() const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_TEXT )
{
  QTextLayout * obj = (QTextLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->text () );
  }
}


/*
void setTextOption(const QTextOption &option)
*/
HB_FUNC_STATIC( QTEXTLAYOUT_SETTEXTOPTION )
{
  QTextLayout * obj = (QTextLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTextOption ( *PQTEXTOPTION(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
const QTextOption &textOption() const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_TEXTOPTION )
{
  QTextLayout * obj = (QTextLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QTextOption * ptr = &obj->textOption ();
    _qt5xhb_createReturnClass ( ptr, "QTEXTOPTION" );
  }
}


/*
void setPreeditArea(int position, const QString &text)
*/
HB_FUNC_STATIC( QTEXTLAYOUT_SETPREEDITAREA )
{
  QTextLayout * obj = (QTextLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPreeditArea ( PINT(1), PQSTRING(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int preeditAreaPosition() const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_PREEDITAREAPOSITION )
{
  QTextLayout * obj = (QTextLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->preeditAreaPosition () );
  }
}


/*
QString preeditAreaText() const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_PREEDITAREATEXT )
{
  QTextLayout * obj = (QTextLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->preeditAreaText () );
  }
}




/*
void clearAdditionalFormats()
*/
HB_FUNC_STATIC( QTEXTLAYOUT_CLEARADDITIONALFORMATS )
{
  QTextLayout * obj = (QTextLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clearAdditionalFormats ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCacheEnabled(bool enable)
*/
HB_FUNC_STATIC( QTEXTLAYOUT_SETCACHEENABLED )
{
  QTextLayout * obj = (QTextLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCacheEnabled ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool cacheEnabled() const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_CACHEENABLED )
{
  QTextLayout * obj = (QTextLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->cacheEnabled () );
  }
}


/*
void setCursorMoveStyle(Qt::CursorMoveStyle style)
*/
HB_FUNC_STATIC( QTEXTLAYOUT_SETCURSORMOVESTYLE )
{
  QTextLayout * obj = (QTextLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCursorMoveStyle ( (Qt::CursorMoveStyle) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Qt::CursorMoveStyle cursorMoveStyle() const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_CURSORMOVESTYLE )
{
  QTextLayout * obj = (QTextLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->cursorMoveStyle () );
  }
}


/*
void beginLayout()
*/
HB_FUNC_STATIC( QTEXTLAYOUT_BEGINLAYOUT )
{
  QTextLayout * obj = (QTextLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->beginLayout ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void endLayout()
*/
HB_FUNC_STATIC( QTEXTLAYOUT_ENDLAYOUT )
{
  QTextLayout * obj = (QTextLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->endLayout ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void clearLayout()
*/
HB_FUNC_STATIC( QTEXTLAYOUT_CLEARLAYOUT )
{
  QTextLayout * obj = (QTextLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clearLayout ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QTextLine createLine()
*/
HB_FUNC_STATIC( QTEXTLAYOUT_CREATELINE )
{
  QTextLayout * obj = (QTextLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextLine * ptr = new QTextLine( obj->createLine () );
    _qt5xhb_createReturnClass ( ptr, "QTEXTLINE" );
  }
}


/*
int lineCount() const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_LINECOUNT )
{
  QTextLayout * obj = (QTextLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->lineCount () );
  }
}


/*
QTextLine lineAt(int i) const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_LINEAT )
{
  QTextLayout * obj = (QTextLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextLine * ptr = new QTextLine( obj->lineAt ( PINT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QTEXTLINE" );
  }
}


/*
QTextLine lineForTextPosition(int pos) const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_LINEFORTEXTPOSITION )
{
  QTextLayout * obj = (QTextLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextLine * ptr = new QTextLine( obj->lineForTextPosition ( PINT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QTEXTLINE" );
  }
}


/*
bool isValidCursorPosition(int pos) const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_ISVALIDCURSORPOSITION )
{
  QTextLayout * obj = (QTextLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isValidCursorPosition ( PINT(1) ) );
  }
}


/*
int nextCursorPosition(int oldPos, CursorMode mode = SkipCharacters) const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_NEXTCURSORPOSITION )
{
  QTextLayout * obj = (QTextLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = ISNIL(2)? (int) QTextLayout::SkipCharacters : hb_parni(2);
    RINT( obj->nextCursorPosition ( PINT(1), (QTextLayout::CursorMode) par2 ) );
  }
}


/*
int previousCursorPosition(int oldPos, CursorMode mode = SkipCharacters) const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_PREVIOUSCURSORPOSITION )
{
  QTextLayout * obj = (QTextLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = ISNIL(2)? (int) QTextLayout::SkipCharacters : hb_parni(2);
    RINT( obj->previousCursorPosition ( PINT(1), (QTextLayout::CursorMode) par2 ) );
  }
}


/*
int leftCursorPosition(int oldPos) const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_LEFTCURSORPOSITION )
{
  QTextLayout * obj = (QTextLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->leftCursorPosition ( PINT(1) ) );
  }
}


/*
int rightCursorPosition(int oldPos) const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_RIGHTCURSORPOSITION )
{
  QTextLayout * obj = (QTextLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->rightCursorPosition ( PINT(1) ) );
  }
}



/*
void drawCursor(QPainter *p, const QPointF &pos, int cursorPosition) const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_DRAWCURSOR1 )
{
  QTextLayout * obj = (QTextLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->drawCursor ( PQPAINTER(1), *PQPOINTF(2), PINT(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void drawCursor(QPainter *p, const QPointF &pos, int cursorPosition, int width) const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_DRAWCURSOR2 )
{
  QTextLayout * obj = (QTextLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->drawCursor ( PQPAINTER(1), *PQPOINTF(2), PINT(3), PINT(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QPointF position() const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_POSITION )
{
  QTextLayout * obj = (QTextLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->position () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
void setPosition(const QPointF &p)
*/
HB_FUNC_STATIC( QTEXTLAYOUT_SETPOSITION )
{
  QTextLayout * obj = (QTextLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPosition ( *PQPOINTF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QRectF boundingRect() const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_BOUNDINGRECT )
{
  QTextLayout * obj = (QTextLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->boundingRect () );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
qreal minimumWidth() const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_MINIMUMWIDTH )
{
  QTextLayout * obj = (QTextLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->minimumWidth () );
  }
}


/*
qreal maximumWidth() const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_MAXIMUMWIDTH )
{
  QTextLayout * obj = (QTextLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->maximumWidth () );
  }
}



/*
QTextEngine *engine() const
*/
HB_FUNC_STATIC( QTEXTLAYOUT_ENGINE )
{
  QTextLayout * obj = (QTextLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextEngine * ptr = obj->engine ();
    _qt5xhb_createReturnClass ( ptr, "QTEXTENGINE" );
  }
}


/*
void setFlags(int flags)
*/
HB_FUNC_STATIC( QTEXTLAYOUT_SETFLAGS )
{
  QTextLayout * obj = (QTextLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFlags ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP

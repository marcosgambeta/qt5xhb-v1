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
   METHOD cursorToX1
   METHOD cursorToX2
   METHOD xToCursor
   METHOD setLineWidth
   METHOD setNumColumns1
   METHOD setNumColumns2
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
HB_FUNC_STATIC( QTEXTLINE_NEW )
{
  QTextLine * o = new QTextLine ();
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
bool isValid() const
*/
HB_FUNC_STATIC( QTEXTLINE_ISVALID )
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}


/*
QRectF rect() const
*/
HB_FUNC_STATIC( QTEXTLINE_RECT )
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->rect () );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
qreal x() const
*/
HB_FUNC_STATIC( QTEXTLINE_X )
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->x () );
  }
}


/*
qreal y() const
*/
HB_FUNC_STATIC( QTEXTLINE_Y )
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->y () );
  }
}


/*
qreal width() const
*/
HB_FUNC_STATIC( QTEXTLINE_WIDTH )
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->width () );
  }
}


/*
qreal ascent() const
*/
HB_FUNC_STATIC( QTEXTLINE_ASCENT )
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->ascent () );
  }
}


/*
qreal descent() const
*/
HB_FUNC_STATIC( QTEXTLINE_DESCENT )
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->descent () );
  }
}


/*
qreal height() const
*/
HB_FUNC_STATIC( QTEXTLINE_HEIGHT )
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->height () );
  }
}


/*
qreal leading() const
*/
HB_FUNC_STATIC( QTEXTLINE_LEADING )
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->leading () );
  }
}


/*
void setLeadingIncluded(bool included)
*/
HB_FUNC_STATIC( QTEXTLINE_SETLEADINGINCLUDED )
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLeadingIncluded ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool leadingIncluded() const
*/
HB_FUNC_STATIC( QTEXTLINE_LEADINGINCLUDED )
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->leadingIncluded () );
  }
}


/*
qreal naturalTextWidth() const
*/
HB_FUNC_STATIC( QTEXTLINE_NATURALTEXTWIDTH )
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->naturalTextWidth () );
  }
}


/*
qreal horizontalAdvance() const
*/
HB_FUNC_STATIC( QTEXTLINE_HORIZONTALADVANCE )
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->horizontalAdvance () );
  }
}


/*
QRectF naturalTextRect() const
*/
HB_FUNC_STATIC( QTEXTLINE_NATURALTEXTRECT )
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->naturalTextRect () );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
qreal cursorToX(int *cursorPos, Edge edge = Leading) const
*/
HB_FUNC_STATIC( QTEXTLINE_CURSORTOX1 )
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1;
    int par2 = ISNIL(2)? (int) QTextLine::Leading : hb_parni(2);
    RQREAL( obj->cursorToX ( &par1, (QTextLine::Edge) par2 ) );
    hb_storni( par1, 1 );
  }
}


/*
qreal cursorToX(int cursorPos, Edge edge = Leading) const
*/
HB_FUNC_STATIC( QTEXTLINE_CURSORTOX2 )
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = ISNIL(2)? (int) QTextLine::Leading : hb_parni(2);
    RQREAL( obj->cursorToX ( PINT(1), (QTextLine::Edge) par2 ) );
  }
}


/*
int xToCursor(qreal x, CursorPosition = CursorBetweenCharacters) const
*/
HB_FUNC_STATIC( QTEXTLINE_XTOCURSOR )
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = ISNIL(2)? (int) QTextLine::CursorBetweenCharacters : hb_parni(2);
    RINT( obj->xToCursor ( PQREAL(1), (QTextLine::CursorPosition) par2 ) );
  }
}


/*
void setLineWidth(qreal width)
*/
HB_FUNC_STATIC( QTEXTLINE_SETLINEWIDTH )
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLineWidth ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNumColumns(int columns)
*/
HB_FUNC_STATIC( QTEXTLINE_SETNUMCOLUMNS1 )
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setNumColumns ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNumColumns(int columns, qreal alignmentWidth)
*/
HB_FUNC_STATIC( QTEXTLINE_SETNUMCOLUMNS2 )
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setNumColumns ( PINT(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPosition(const QPointF &pos)
*/
HB_FUNC_STATIC( QTEXTLINE_SETPOSITION )
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPosition ( *PQPOINTF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QPointF position() const
*/
HB_FUNC_STATIC( QTEXTLINE_POSITION )
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->position () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
int textStart() const
*/
HB_FUNC_STATIC( QTEXTLINE_TEXTSTART )
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->textStart () );
  }
}


/*
int textLength() const
*/
HB_FUNC_STATIC( QTEXTLINE_TEXTLENGTH )
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->textLength () );
  }
}


/*
int lineNumber() const
*/
HB_FUNC_STATIC( QTEXTLINE_LINENUMBER )
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->lineNumber () );
  }
}


/*
void draw(QPainter *p, const QPointF &point, const QTextLayout::FormatRange *selection = 0) const
*/
HB_FUNC_STATIC( QTEXTLINE_DRAW )
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextLayout::FormatRange * par3 = ISNIL(3)? 0 : (QTextLayout::FormatRange *) _qt5xhb_itemGetPtr(3);
    obj->draw ( PQPAINTER(1), *PQPOINTF(2), par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP

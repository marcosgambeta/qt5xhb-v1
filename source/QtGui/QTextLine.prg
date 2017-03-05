/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QPOINTF
#endif

CLASS QTextLine

   DATA pointer
   DATA class_id INIT Class_Id_QTextLine
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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

PROCEDURE destroyObject () CLASS QTextLine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QTextLine>
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QTextLine>
#endif

/*
QTextLine()
*/
HB_FUNC_STATIC( QTEXTLINE_NEW )
{
  QTextLine * o = new QTextLine (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextLine *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QTEXTLINE_DELETE )
{
  QTextLine * obj = (QTextLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isValid() const
*/
HB_FUNC_STATIC( QTEXTLINE_ISVALID )
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
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
    QRectF * ptr = new QRectF( obj->rect (  ) );
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
    hb_retnd( obj->x (  ) );
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
    hb_retnd( obj->y (  ) );
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
    hb_retnd( obj->width (  ) );
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
    hb_retnd( obj->ascent (  ) );
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
    hb_retnd( obj->descent (  ) );
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
    hb_retnd( obj->height (  ) );
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
    hb_retnd( obj->leading (  ) );
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
    obj->setLeadingIncluded ( (bool) hb_parl(1) );
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
    hb_retl( obj->leadingIncluded (  ) );
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
    hb_retnd( obj->naturalTextWidth (  ) );
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
    hb_retnd( obj->horizontalAdvance (  ) );
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
    QRectF * ptr = new QRectF( obj->naturalTextRect (  ) );
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
    hb_retnd( obj->cursorToX ( &par1,  (QTextLine::Edge) par2 ) );
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
    hb_retnd( obj->cursorToX ( (int) hb_parni(1),  (QTextLine::Edge) par2 ) );
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
    qreal par1 = hb_parnd(1);
    int par2 = ISNIL(2)? (int) QTextLine::CursorBetweenCharacters : hb_parni(2);
    hb_retni( obj->xToCursor ( par1,  (QTextLine::CursorPosition) par2 ) );
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
    qreal par1 = hb_parnd(1);
    obj->setLineWidth ( par1 );
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
    obj->setNumColumns ( (int) hb_parni(1) );
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
    qreal par2 = hb_parnd(2);
    obj->setNumColumns ( (int) hb_parni(1), par2 );
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
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    obj->setPosition ( *par1 );
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
    QPointF * ptr = new QPointF( obj->position (  ) );
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
    hb_retni( obj->textStart (  ) );
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
    hb_retni( obj->textLength (  ) );
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
    hb_retni( obj->lineNumber (  ) );
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
    QPainter * par1 = (QPainter *) _qt5xhb_itemGetPtr(1);
    QPointF * par2 = (QPointF *) _qt5xhb_itemGetPtr(2);
    QTextLayout::FormatRange * par3 = ISNIL(3)? 0 : (QTextLayout::FormatRange *) _qt5xhb_itemGetPtr(3);
    obj->draw ( par1, *par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




HB_FUNC_STATIC( QTEXTLINE_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QTEXTLINE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTEXTLINE_NEWFROM );
}

HB_FUNC_STATIC( QTEXTLINE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTEXTLINE_NEWFROM );
}

HB_FUNC_STATIC( QTEXTLINE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QTEXTLINE_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP

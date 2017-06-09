/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QTEXTLENGTH
#endif

CLASS QTextFrameFormat INHERIT QTextFormat

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isValid
   METHOD setPosition
   METHOD position
   METHOD setBorder
   METHOD border
   METHOD setBorderBrush
   METHOD borderBrush
   METHOD setBorderStyle
   METHOD borderStyle
   METHOD setMargin
   METHOD margin
   METHOD setTopMargin
   METHOD topMargin
   METHOD setBottomMargin
   METHOD bottomMargin
   METHOD setLeftMargin
   METHOD leftMargin
   METHOD setRightMargin
   METHOD rightMargin
   METHOD setPadding
   METHOD padding
   METHOD setWidth1
   METHOD setWidth2
   METHOD width
   METHOD setHeight1
   METHOD setHeight2
   METHOD height
   METHOD setPageBreakPolicy
   METHOD pageBreakPolicy

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextFrameFormat
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QTextFrameFormat>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QTextFrameFormat>
#endif

/*
QTextFrameFormat()
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_NEW )
{
  QTextFrameFormat * o = new QTextFrameFormat ();
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QTEXTFRAMEFORMAT_DELETE )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_ISVALID )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid () );
  }
}


/*
void setPosition(Position f)
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETPOSITION )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPosition ( (QTextFrameFormat::Position) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Position position() const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_POSITION )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->position () );
  }
}


/*
void setBorder(qreal border)
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETBORDER )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBorder ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal border() const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_BORDER )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->border () );
  }
}


/*
void setBorderBrush(const QBrush &brush)
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETBORDERBRUSH )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBorderBrush ( *PQBRUSH(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QBrush borderBrush() const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_BORDERBRUSH )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QBrush * ptr = new QBrush( obj->borderBrush () );
    _qt5xhb_createReturnClass ( ptr, "QBRUSH", true );
  }
}


/*
void setBorderStyle(BorderStyle style)
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETBORDERSTYLE )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBorderStyle ( (QTextFrameFormat::BorderStyle) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
BorderStyle borderStyle() const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_BORDERSTYLE )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->borderStyle () );
  }
}


/*
void setMargin(qreal margin)
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETMARGIN )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMargin ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal margin() const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_MARGIN )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->margin () );
  }
}


/*
void setTopMargin(qreal margin)
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETTOPMARGIN )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTopMargin ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal topMargin() const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_TOPMARGIN )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->topMargin () );
  }
}


/*
void setBottomMargin(qreal margin)
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETBOTTOMMARGIN )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBottomMargin ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal bottomMargin() const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_BOTTOMMARGIN )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->bottomMargin () );
  }
}


/*
void setLeftMargin(qreal margin)
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETLEFTMARGIN )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLeftMargin ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal leftMargin() const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_LEFTMARGIN )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->leftMargin () );
  }
}


/*
void setRightMargin(qreal margin)
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETRIGHTMARGIN )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRightMargin ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal rightMargin() const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_RIGHTMARGIN )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->rightMargin () );
  }
}


/*
void setPadding(qreal padding)
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETPADDING )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPadding ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal padding() const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_PADDING )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->padding () );
  }
}


/*
void setWidth(qreal width)
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETWIDTH1 )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setWidth ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWidth(const QTextLength &length)
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETWIDTH2 )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextLength * par1 = (QTextLength *) _qt5xhb_itemGetPtr(1);
    obj->setWidth ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QTextLength width() const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_WIDTH )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextLength * ptr = new QTextLength( obj->width () );
    _qt5xhb_createReturnClass ( ptr, "QTEXTLENGTH" );
  }
}


/*
void setHeight(qreal height)
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETHEIGHT1 )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setHeight ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHeight(const QTextLength &height)
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETHEIGHT2 )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextLength * par1 = (QTextLength *) _qt5xhb_itemGetPtr(1);
    obj->setHeight ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QTextLength height() const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_HEIGHT )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextLength * ptr = new QTextLength( obj->height () );
    _qt5xhb_createReturnClass ( ptr, "QTEXTLENGTH" );
  }
}


/*
void setPageBreakPolicy(PageBreakFlags flags)
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETPAGEBREAKPOLICY )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPageBreakPolicy ( (QTextFrameFormat::PageBreakFlags) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
PageBreakFlags pageBreakPolicy() const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_PAGEBREAKPOLICY )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->pageBreakPolicy () );
  }
}



#pragma ENDDUMP

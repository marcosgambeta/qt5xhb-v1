/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QTextBlockFormat INHERIT QTextFormat

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isValid
   METHOD setAlignment
   METHOD alignment
   METHOD setTopMargin
   METHOD topMargin
   METHOD setBottomMargin
   METHOD bottomMargin
   METHOD setLeftMargin
   METHOD leftMargin
   METHOD setRightMargin
   METHOD rightMargin
   METHOD setTextIndent
   METHOD textIndent
   METHOD setIndent
   METHOD indent
   METHOD setLineHeight
   METHOD lineHeight1
   METHOD lineHeight2
   METHOD lineHeightType
   METHOD setNonBreakableLines
   METHOD nonBreakableLines
   METHOD setPageBreakPolicy
   METHOD pageBreakPolicy

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextBlockFormat
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QTextBlockFormat>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QTextBlockFormat>
#endif

/*
QTextBlockFormat()
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_NEW )
{
  QTextBlockFormat * o = new QTextBlockFormat ();
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QTEXTBLOCKFORMAT_DELETE )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_ISVALID )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}


/*
void setAlignment(Qt::Alignment alignment)
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_SETALIGNMENT )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAlignment ( (Qt::Alignment) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Qt::Alignment alignment() const
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_ALIGNMENT )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->alignment () );
  }
}


/*
void setTopMargin(qreal margin)
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_SETTOPMARGIN )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTopMargin ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal topMargin() const
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_TOPMARGIN )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->topMargin () );
  }
}


/*
void setBottomMargin(qreal margin)
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_SETBOTTOMMARGIN )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBottomMargin ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal bottomMargin() const
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_BOTTOMMARGIN )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->bottomMargin () );
  }
}


/*
void setLeftMargin(qreal margin)
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_SETLEFTMARGIN )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLeftMargin ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal leftMargin() const
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_LEFTMARGIN )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->leftMargin () );
  }
}


/*
void setRightMargin(qreal margin)
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_SETRIGHTMARGIN )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRightMargin ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal rightMargin() const
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_RIGHTMARGIN )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->rightMargin () );
  }
}


/*
void setTextIndent(qreal aindent)
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_SETTEXTINDENT )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTextIndent ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal textIndent() const
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_TEXTINDENT )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->textIndent () );
  }
}


/*
void setIndent(int indent)
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_SETINDENT )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setIndent ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int indent() const
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_INDENT )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->indent () );
  }
}


/*
void setLineHeight(qreal height, int heightType)
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_SETLINEHEIGHT )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLineHeight ( PQREAL(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal lineHeight(qreal scriptLineHeight, qreal scaling) const
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_LINEHEIGHT1 )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->lineHeight ( PQREAL(1), PQREAL(2) ) );
  }
}


/*
qreal lineHeight() const
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_LINEHEIGHT2 )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->lineHeight () );
  }
}


/*
int lineHeightType() const
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_LINEHEIGHTTYPE )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->lineHeightType () );
  }
}


/*
void setNonBreakableLines(bool b)
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_SETNONBREAKABLELINES )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setNonBreakableLines ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool nonBreakableLines() const
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_NONBREAKABLELINES )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->nonBreakableLines () );
  }
}


/*
void setPageBreakPolicy(PageBreakFlags flags)
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_SETPAGEBREAKPOLICY )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPageBreakPolicy ( (QTextBlockFormat::PageBreakFlags) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
PageBreakFlags pageBreakPolicy() const
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_PAGEBREAKPOLICY )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->pageBreakPolicy () );
  }
}





#pragma ENDDUMP

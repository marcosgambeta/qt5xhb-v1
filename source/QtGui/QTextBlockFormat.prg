/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QTextBlockFormat INHERIT QTextFormat

   DATA class_id INIT Class_Id_QTextBlockFormat
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QTextBlockFormat>
#endif
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

#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QTextBlockFormat>
#endif
#endif

/*
QTextBlockFormat()
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QTextBlockFormat * o = new QTextBlockFormat (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextBlockFormat *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QTEXTBLOCKFORMAT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
bool isValid() const
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_ISVALID )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
void setAlignment(Qt::Alignment alignment)
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_SETALIGNMENT )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAlignment (  (Qt::Alignment) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Qt::Alignment alignment() const
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_ALIGNMENT )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->alignment (  );
    hb_retni( i );
  }
}


/*
void setTopMargin(qreal margin)
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_SETTOPMARGIN )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setTopMargin ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal topMargin() const
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_TOPMARGIN )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->topMargin (  ) );
  }
}


/*
void setBottomMargin(qreal margin)
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_SETBOTTOMMARGIN )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setBottomMargin ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal bottomMargin() const
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_BOTTOMMARGIN )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->bottomMargin (  ) );
  }
}


/*
void setLeftMargin(qreal margin)
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_SETLEFTMARGIN )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setLeftMargin ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal leftMargin() const
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_LEFTMARGIN )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->leftMargin (  ) );
  }
}


/*
void setRightMargin(qreal margin)
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_SETRIGHTMARGIN )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setRightMargin ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal rightMargin() const
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_RIGHTMARGIN )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->rightMargin (  ) );
  }
}


/*
void setTextIndent(qreal aindent)
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_SETTEXTINDENT )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setTextIndent ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal textIndent() const
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_TEXTINDENT )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->textIndent (  ) );
  }
}


/*
void setIndent(int indent)
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_SETINDENT )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setIndent ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int indent() const
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_INDENT )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->indent (  ) );
  }
}


/*
void setLineHeight(qreal height, int heightType)
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_SETLINEHEIGHT )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setLineHeight ( par1, (int) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal lineHeight(qreal scriptLineHeight, qreal scaling) const
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_LINEHEIGHT1 )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    hb_retnd( obj->lineHeight ( par1, par2 ) );
  }
}


/*
qreal lineHeight() const
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_LINEHEIGHT2 )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->lineHeight (  ) );
  }
}


/*
int lineHeightType() const
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_LINEHEIGHTTYPE )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->lineHeightType (  ) );
  }
}


/*
void setNonBreakableLines(bool b)
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_SETNONBREAKABLELINES )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setNonBreakableLines ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool nonBreakableLines() const
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_NONBREAKABLELINES )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->nonBreakableLines (  ) );
  }
}


/*
void setPageBreakPolicy(PageBreakFlags flags)
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_SETPAGEBREAKPOLICY )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPageBreakPolicy (  (QTextBlockFormat::PageBreakFlags) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
PageBreakFlags pageBreakPolicy() const
*/
HB_FUNC_STATIC( QTEXTBLOCKFORMAT_PAGEBREAKPOLICY )
{
  QTextBlockFormat * obj = (QTextBlockFormat *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->pageBreakPolicy (  );
    hb_retni( i );
  }
}





#pragma ENDDUMP

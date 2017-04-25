/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
//#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCOLOR
REQUEST QTEXTDOCUMENT
REQUEST QFONT
REQUEST QTEXTCURSOR
REQUEST QRECTF
REQUEST QPAINTERPATH
#endif

CLASS QGraphicsTextItem INHERIT QGraphicsObject

   //DATA class_id INIT Class_Id_QGraphicsTextItem
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD adjustSize
   METHOD defaultTextColor
   METHOD document
   METHOD font
   METHOD openExternalLinks
   METHOD setDefaultTextColor
   METHOD setDocument
   METHOD setFont
   METHOD setHtml
   METHOD setOpenExternalLinks
   METHOD setPlainText
   METHOD setTabChangesFocus
   METHOD setTextCursor
   METHOD setTextInteractionFlags
   METHOD setTextWidth
   METHOD tabChangesFocus
   METHOD textCursor
   METHOD textInteractionFlags
   METHOD textWidth
   METHOD toHtml
   METHOD toPlainText
   METHOD boundingRect
   METHOD contains
   METHOD isObscuredBy
   METHOD opaqueArea
   METHOD paint
   METHOD shape
   METHOD type

   METHOD onLinkActivated
   METHOD onLinkHovered

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsTextItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QGraphicsTextItem>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QGraphicsTextItem>
#endif

#include <QFont>
#include <QTextCursor>

/*
QGraphicsTextItem ( QGraphicsItem * parent = 0 )
*/
void QGraphicsTextItem_new1 ()
{
  QGraphicsItem * par1 = ISNIL(1)? 0 : (QGraphicsItem *) _qt5xhb_itemGetPtr(1);
  QGraphicsTextItem * o = new QGraphicsTextItem ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QGraphicsTextItem ( const QString & text, QGraphicsItem * parent = 0 )
*/
void QGraphicsTextItem_new2 ()
{
  QString par1 = QLatin1String( hb_parc(1) );
  QGraphicsItem * par2 = ISNIL(2)? 0 : (QGraphicsItem *) _qt5xhb_itemGetPtr(2);
  QGraphicsTextItem * o = new QGraphicsTextItem ( par1, par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QGraphicsTextItem ( QGraphicsItem * parent = 0 )
//[2]QGraphicsTextItem ( const QString & text, QGraphicsItem * parent = 0 )

HB_FUNC_STATIC( QGRAPHICSTEXTITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSITEM(1)||ISNIL(1)) )
  {
    QGraphicsTextItem_new1();
  }
  else if( ISBETWEEN(1,2)&& ISCHAR(1) && (ISQGRAPHICSITEM(2)||ISNIL(2)) )
  {
    QGraphicsTextItem_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGRAPHICSTEXTITEM_DELETE )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void adjustSize ()
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_ADJUSTSIZE )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->adjustSize (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QColor defaultTextColor () const
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_DEFAULTTEXTCOLOR )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QColor * ptr = new QColor( obj->defaultTextColor (  ) );
    _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}

/*
QTextDocument * document () const
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_DOCUMENT )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QTextDocument * ptr = obj->document (  );
    _qt5xhb_createReturnClass ( ptr, "QTEXTDOCUMENT" );
  }
}

/*
QFont font () const
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_FONT )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QFont * ptr = new QFont( obj->font (  ) );
    _qt5xhb_createReturnClass ( ptr, "QFONT", true );
  }
}

/*
bool openExternalLinks () const
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_OPENEXTERNALLINKS )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->openExternalLinks (  ) );
  }
}

/*
void setDefaultTextColor ( const QColor & col )
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_SETDEFAULTTEXTCOLOR )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQCOLOR(1) )
    {
      QColor par1 = ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1));
      obj->setDefaultTextColor ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDocument ( QTextDocument * document )
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_SETDOCUMENT )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQTEXTDOCUMENT(1) )
    {
      QTextDocument * par1 = (QTextDocument *) _qt5xhb_itemGetPtr(1);
      obj->setDocument ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFont ( const QFont & font )
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_SETFONT )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQFONT(1) )
    {
      QFont * par1 = (QFont *) _qt5xhb_itemGetPtr(1);
      obj->setFont ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setHtml ( const QString & text )
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_SETHTML )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      QString par1 = QLatin1String( hb_parc(1) );
      obj->setHtml ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOpenExternalLinks ( bool open )
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_SETOPENEXTERNALLINKS )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setOpenExternalLinks ( (bool) hb_parl(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPlainText ( const QString & text )
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_SETPLAINTEXT )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      QString par1 = QLatin1String( hb_parc(1) );
      obj->setPlainText ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTabChangesFocus ( bool b )
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_SETTABCHANGESFOCUS )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setTabChangesFocus ( (bool) hb_parl(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTextCursor ( const QTextCursor & cursor )
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_SETTEXTCURSOR )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQTEXTCURSOR(1) )
    {
      QTextCursor * par1 = (QTextCursor *) _qt5xhb_itemGetPtr(1);
      obj->setTextCursor ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTextInteractionFlags ( Qt::TextInteractionFlags flags )
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_SETTEXTINTERACTIONFLAGS )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setTextInteractionFlags (  (Qt::TextInteractionFlags) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTextWidth ( qreal width )
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_SETTEXTWIDTH )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setTextWidth ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool tabChangesFocus () const
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_TABCHANGESFOCUS )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->tabChangesFocus (  ) );
  }
}

/*
QTextCursor textCursor () const
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_TEXTCURSOR )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QTextCursor * ptr = new QTextCursor( obj->textCursor (  ) );
    _qt5xhb_createReturnClass ( ptr, "QTEXTCURSOR", true );
  }
}

/*
Qt::TextInteractionFlags textInteractionFlags () const
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_TEXTINTERACTIONFLAGS )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->textInteractionFlags (  ) );
  }
}

/*
qreal textWidth () const
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_TEXTWIDTH )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retnd( obj->textWidth (  ) );
  }
}

/*
QString toHtml () const
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_TOHTML )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( (const char *) obj->toHtml (  ).toLatin1().data() );
  }
}

/*
QString toPlainText () const
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_TOPLAINTEXT )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( (const char *) obj->toPlainText (  ).toLatin1().data() );
  }
}

/*
virtual QRectF boundingRect () const
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_BOUNDINGRECT )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRectF * ptr = new QRectF( obj->boundingRect (  ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
virtual bool contains ( const QPointF & point ) const
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_CONTAINS )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPOINTF(1) )
    {
      QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
      hb_retl( obj->contains ( *par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool isObscuredBy ( const QGraphicsItem * item ) const
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_ISOBSCUREDBY )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQGRAPHICSITEM(1) )
    {
      QGraphicsItem * par1 = (QGraphicsItem *) _qt5xhb_itemGetPtr(1);
      hb_retl( obj->isObscuredBy ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QPainterPath opaqueArea () const
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_OPAQUEAREA )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->opaqueArea (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget )
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_PAINT )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPAINTER(1) && ISQSTYLEOPTIONGRAPHICSITEM(2) && ISQWIDGET(3) )
    {
      QPainter * par1 = (QPainter *) _qt5xhb_itemGetPtr(1);
      const QStyleOptionGraphicsItem * par2 = (const QStyleOptionGraphicsItem *) _qt5xhb_itemGetPtr(2);
      QWidget * par3 = (QWidget *) _qt5xhb_itemGetPtr(3);
      obj->paint ( par1, par2, par3 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QPainterPath shape () const
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_SHAPE )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->shape (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
virtual int type () const
*/
HB_FUNC_STATIC( QGRAPHICSTEXTITEM_TYPE )
{
  QGraphicsTextItem * obj = (QGraphicsTextItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->type (  ) );
  }
}

#pragma ENDDUMP

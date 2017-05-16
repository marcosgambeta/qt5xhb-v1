/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QVARIANT
REQUEST QFONT
REQUEST QICON
REQUEST QLISTWIDGET
REQUEST QSIZE
REQUEST QCOLOR
#endif

CLASS QListWidgetItem

   DATA pointer
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD background
   METHOD setBackground
   METHOD checkState
   METHOD setCheckState
   METHOD clone
   METHOD data
   METHOD setData
   METHOD flags
   METHOD setFlags
   METHOD font
   METHOD setFont
   METHOD foreground
   METHOD setForeground
   METHOD icon
   METHOD setIcon
   METHOD isHidden
   METHOD setHidden
   METHOD isSelected
   METHOD setSelected
   METHOD listWidget
   METHOD read
   METHOD sizeHint
   METHOD setSizeHint
   METHOD statusTip
   METHOD setStatusTip
   METHOD text
   METHOD setText
   METHOD textAlignment
   METHOD setTextAlignment
   METHOD toolTip
   METHOD setToolTip
   METHOD type
   METHOD whatsThis
   METHOD setWhatsThis
   METHOD write
   METHOD backgroundColor
   METHOD setBackgroundColor
   METHOD textColor
   METHOD setTextColor

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QListWidgetItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QListWidgetItem>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QListWidgetItem>
#endif

/*
QListWidgetItem ( QListWidget * parent = 0, int type = Type )
*/
void QListWidgetItem_new1 ()
{
  QListWidget * par1 = ISNIL(1)? 0 : (QListWidget *) _qt5xhb_itemGetPtr(1);
  int par2 = ISNIL(2)? QListWidgetItem::Type : hb_parni(2);
  QListWidgetItem * o = new QListWidgetItem ( par1, par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QListWidgetItem ( const QString & text, QListWidget * parent = 0, int type = Type )
*/
void QListWidgetItem_new2 ()
{
  QListWidget * par2 = ISNIL(2)? 0 : (QListWidget *) _qt5xhb_itemGetPtr(2);
  int par3 = ISNIL(3)? QListWidgetItem::Type : hb_parni(3);
  QListWidgetItem * o = new QListWidgetItem ( PQSTRING(1), par2, par3 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QListWidgetItem ( const QIcon & icon, const QString & text, QListWidget * parent = 0, int type = Type )
*/
void QListWidgetItem_new3 ()
{
  QIcon par1 = ISOBJECT(1)? *(QIcon *) _qt5xhb_itemGetPtr(1) : QIcon(hb_parc(1));
  QListWidget * par3 = ISNIL(3)? 0 : (QListWidget *) _qt5xhb_itemGetPtr(3);
  int par4 = ISNIL(4)? QListWidgetItem::Type : hb_parni(4);
  QListWidgetItem * o = new QListWidgetItem ( par1, PQSTRING(2), par3, par4 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QListWidgetItem ( const QListWidgetItem & other )
*/
void QListWidgetItem_new4 ()
{
  QListWidgetItem * par1 = (QListWidgetItem *) _qt5xhb_itemGetPtr(1);
  QListWidgetItem * o = new QListWidgetItem ( *par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QListWidgetItem ( QListWidget * parent = 0, int type = Type )
//[2]QListWidgetItem ( const QString & text, QListWidget * parent = 0, int type = Type )
//[3]QListWidgetItem ( const QIcon & icon, const QString & text, QListWidget * parent = 0, int type = Type )
//[4]QListWidgetItem ( const QListWidgetItem & other )

HB_FUNC_STATIC( QLISTWIDGETITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQLISTWIDGET(1)||ISNIL(1)) && ISOPTNUM(2) )
  {
    QListWidgetItem_new1();
  }
  else if( ISBETWEEN(1,3) && ISCHAR(1) && (ISQLISTWIDGET(2)||ISNIL(2)) && ISOPTNUM(3) )
  {
    QListWidgetItem_new2();
  }
  else if( ISBETWEEN(2,4) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) && (ISQLISTWIDGET(3)||ISNIL(3)) && ISOPTNUM(4) )
  {
    QListWidgetItem_new3();
  }
  else if( ISNUMPAR(1) && ISQLISTWIDGETITEM(1) )
  {
    QListWidgetItem_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QLISTWIDGETITEM_DELETE )
{
  QListWidgetItem * obj = (QListWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QBrush background () const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_BACKGROUND )
{
  QListWidgetItem * obj = (QListWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QBrush * ptr = new QBrush( obj->background () );
    _qt5xhb_createReturnClass ( ptr, "QBRUSH", true );
  }
}

/*
void setBackground ( const QBrush & brush )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_SETBACKGROUND )
{
  QListWidgetItem * obj = (QListWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQBRUSH(1) )
    {
      QBrush * par1 = (QBrush *) _qt5xhb_itemGetPtr(1);
      obj->setBackground ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::CheckState checkState () const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_CHECKSTATE )
{
  QListWidgetItem * obj = (QListWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->checkState () );
  }
}

/*
void setCheckState ( Qt::CheckState state )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_SETCHECKSTATE )
{
  QListWidgetItem * obj = (QListWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setCheckState (  (Qt::CheckState) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QListWidgetItem * clone () const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_CLONE )
{
  QListWidgetItem * obj = (QListWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QListWidgetItem * ptr = obj->clone ();
    _qt5xhb_createReturnClass ( ptr, "QLISTWIDGETITEM" );
  }
}

/*
virtual QVariant data ( int role ) const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_DATA )
{
  QListWidgetItem * obj = (QListWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QVariant * ptr = new QVariant( obj->data ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void setData ( int role, const QVariant & value )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_SETDATA )
{
  QListWidgetItem * obj = (QListWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISQVARIANT(2) )
    {
      QVariant * par2 = (QVariant *) _qt5xhb_itemGetPtr(2);
      obj->setData ( PINT(1), *par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::ItemFlags flags () const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_FLAGS )
{
  QListWidgetItem * obj = (QListWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->flags () );
  }
}

/*
void setFlags ( Qt::ItemFlags flags )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_SETFLAGS )
{
  QListWidgetItem * obj = (QListWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setFlags (  (Qt::ItemFlags) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QFont font () const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_FONT )
{
  QListWidgetItem * obj = (QListWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QFont * ptr = new QFont( obj->font () );
    _qt5xhb_createReturnClass ( ptr, "QFONT", true );
  }
}

/*
void setFont ( const QFont & font )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_SETFONT )
{
  QListWidgetItem * obj = (QListWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

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
QBrush foreground () const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_FOREGROUND )
{
  QListWidgetItem * obj = (QListWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QBrush * ptr = new QBrush( obj->foreground () );
    _qt5xhb_createReturnClass ( ptr, "QBRUSH", true );
  }
}

/*
void setForeground ( const QBrush & brush )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_SETFOREGROUND )
{
  QListWidgetItem * obj = (QListWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQBRUSH(1) )
    {
      QBrush * par1 = (QBrush *) _qt5xhb_itemGetPtr(1);
      obj->setForeground ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QIcon icon () const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_ICON )
{
  QListWidgetItem * obj = (QListWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QIcon * ptr = new QIcon( obj->icon () );
    _qt5xhb_createReturnClass ( ptr, "QICON", true );
  }
}

/*
void setIcon ( const QIcon & icon )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_SETICON )
{
  QListWidgetItem * obj = (QListWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( (ISQICON(1)||ISCHAR(1)) )
    {
      QIcon par1 = ISOBJECT(1)? *(QIcon *) _qt5xhb_itemGetPtr(1) : QIcon(hb_parc(1));
      obj->setIcon ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isHidden () const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_ISHIDDEN )
{
  QListWidgetItem * obj = (QListWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isHidden () );
  }
}

/*
void setHidden ( bool hide )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_SETHIDDEN )
{
  QListWidgetItem * obj = (QListWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setHidden ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isSelected () const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_ISSELECTED )
{
  QListWidgetItem * obj = (QListWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isSelected () );
  }
}

/*
void setSelected ( bool select )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_SETSELECTED )
{
  QListWidgetItem * obj = (QListWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setSelected ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QListWidget * listWidget () const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_LISTWIDGET )
{
  QListWidgetItem * obj = (QListWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QListWidget * ptr = obj->listWidget ();
    _qt5xhb_createReturnClass ( ptr, "QLISTWIDGET" );
  }
}

/*
virtual void read ( QDataStream & in )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_READ )
{
  QListWidgetItem * obj = (QListWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQDATASTREAM(1) )
    {
      QDataStream * par1 = (QDataStream *) _qt5xhb_itemGetPtr(1);
      obj->read ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSize sizeHint () const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_SIZEHINT )
{
  QListWidgetItem * obj = (QListWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
void setSizeHint ( const QSize & size )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_SETSIZEHINT )
{
  QListWidgetItem * obj = (QListWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQSIZE(1) )
    {
      QSize * par1 = (QSize *) _qt5xhb_itemGetPtr(1);
      obj->setSizeHint ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString statusTip () const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_STATUSTIP )
{
  QListWidgetItem * obj = (QListWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( RQSTRING( obj->statusTip () ) );
  }
}

/*
void setStatusTip ( const QString & statusTip )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_SETSTATUSTIP )
{
  QListWidgetItem * obj = (QListWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setStatusTip ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString text () const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_TEXT )
{
  QListWidgetItem * obj = (QListWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( RQSTRING( obj->text () ) );
  }
}

/*
void setText ( const QString & text )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_SETTEXT )
{
  QListWidgetItem * obj = (QListWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setText ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int textAlignment () const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_TEXTALIGNMENT )
{
  QListWidgetItem * obj = (QListWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->textAlignment () );
  }
}

/*
void setTextAlignment ( int alignment )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_SETTEXTALIGNMENT )
{
  QListWidgetItem * obj = (QListWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setTextAlignment ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString toolTip () const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_TOOLTIP )
{
  QListWidgetItem * obj = (QListWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( RQSTRING( obj->toolTip () ) );
  }
}

/*
void setToolTip ( const QString & toolTip )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_SETTOOLTIP )
{
  QListWidgetItem * obj = (QListWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setToolTip ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int type () const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_TYPE )
{
  QListWidgetItem * obj = (QListWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->type () );
  }
}

/*
QString whatsThis () const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_WHATSTHIS )
{
  QListWidgetItem * obj = (QListWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( RQSTRING( obj->whatsThis () ) );
  }
}

/*
void setWhatsThis ( const QString & whatsThis )
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_SETWHATSTHIS )
{
  QListWidgetItem * obj = (QListWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setWhatsThis ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void write ( QDataStream & out ) const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_WRITE )
{
  QListWidgetItem * obj = (QListWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQDATASTREAM(1) )
    {
      QDataStream * par1 = (QDataStream *) _qt5xhb_itemGetPtr(1);
      obj->write ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QColor backgroundColor() const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_BACKGROUNDCOLOR )
{
  QListWidgetItem * obj = (QListWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QColor * ptr = new QColor( obj->backgroundColor () );
    _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}

/*
virtual void setBackgroundColor(const QColor &color)
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_SETBACKGROUNDCOLOR )
{
  QListWidgetItem * obj = (QListWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( (ISQCOLOR(1)||ISCHAR(1)) )
    {
      QColor par1 = ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1));
      obj->setBackgroundColor ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QColor textColor() const
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_TEXTCOLOR )
{
  QListWidgetItem * obj = (QListWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QColor * ptr = new QColor( obj->textColor () );
    _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}

/*
void setTextColor(const QColor &color)
*/
HB_FUNC_STATIC( QLISTWIDGETITEM_SETTEXTCOLOR )
{
  QListWidgetItem * obj = (QListWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( (ISQCOLOR(1)||ISCHAR(1)) )
    {
      QColor par1 = ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1));
      obj->setTextColor ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QLISTWIDGETITEM_NEWFROM )
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

HB_FUNC_STATIC( QLISTWIDGETITEM_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QLISTWIDGETITEM_NEWFROM );
}

HB_FUNC_STATIC( QLISTWIDGETITEM_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QLISTWIDGETITEM_NEWFROM );
}

HB_FUNC_STATIC( QLISTWIDGETITEM_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QLISTWIDGETITEM_SETSELFDESTRUCTION )
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

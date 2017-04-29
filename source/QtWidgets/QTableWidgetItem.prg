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
REQUEST QSIZE
REQUEST QTABLEWIDGET
#endif

CLASS QTableWidgetItem

   DATA pointer
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD background
   METHOD checkState
   METHOD clone
   METHOD column
   METHOD data
   METHOD flags
   METHOD font
   METHOD foreground
   METHOD icon
   METHOD isSelected
   METHOD read
   METHOD row
   METHOD setBackground
   METHOD setCheckState
   METHOD setData
   METHOD setFlags
   METHOD setFont
   METHOD setForeground
   METHOD setIcon
   METHOD setSelected
   METHOD setSizeHint
   METHOD setStatusTip
   METHOD setText
   METHOD setTextAlignment
   METHOD setToolTip
   METHOD setWhatsThis
   METHOD sizeHint
   METHOD statusTip
   METHOD tableWidget
   METHOD text
   METHOD textAlignment
   METHOD toolTip
   METHOD type
   METHOD whatsThis
   METHOD write

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTableWidgetItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QTableWidgetItem>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QTableWidgetItem>
#endif

/*
QTableWidgetItem ( int type = Type )
*/
void QTableWidgetItem_new1 ()
{
  int par1 = ISNIL(1)? QTableWidgetItem::Type : hb_parni(1);
  QTableWidgetItem * o = new QTableWidgetItem ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTableWidgetItem ( const QString & text, int type = Type )
*/
void QTableWidgetItem_new2 ()
{
  int par2 = ISNIL(2)? QTableWidgetItem::Type : hb_parni(2);
  QTableWidgetItem * o = new QTableWidgetItem ( PQSTRING(1), par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTableWidgetItem ( const QIcon & icon, const QString & text, int type = Type )
*/
void QTableWidgetItem_new3 ()
{
  QIcon par1 = ISOBJECT(1)? *(QIcon *) _qt5xhb_itemGetPtr(1) : QIcon(hb_parc(1));
  int par3 = ISNIL(3)? QTableWidgetItem::Type : hb_parni(3);
  QTableWidgetItem * o = new QTableWidgetItem ( par1, PQSTRING(2), par3 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTableWidgetItem ( const QTableWidgetItem & other )
*/
void QTableWidgetItem_new4 ()
{
  QTableWidgetItem * par1 = (QTableWidgetItem *) _qt5xhb_itemGetPtr(1);
  QTableWidgetItem * o = new QTableWidgetItem ( *par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QTableWidgetItem ( int type = Type )
//[2]QTableWidgetItem ( const QString & text, int type = Type )
//[3]QTableWidgetItem ( const QIcon & icon, const QString & text, int type = Type )
//[4]QTableWidgetItem ( const QTableWidgetItem & other )

HB_FUNC_STATIC( QTABLEWIDGETITEM_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QTableWidgetItem_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  {
    QTableWidgetItem_new2();
  }
  else if( ISBETWEEN(2,3) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) && ISOPTNUM(3) )
  {
    QTableWidgetItem_new3();
  }
  else if( ISNUMPAR(1) && ISQTABLEWIDGETITEM(1) )
  {
    QTableWidgetItem_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTABLEWIDGETITEM_DELETE )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
HB_FUNC_STATIC( QTABLEWIDGETITEM_BACKGROUND )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QBrush * ptr = new QBrush( obj->background (  ) );
    _qt5xhb_createReturnClass ( ptr, "QBRUSH", true );
  }
}

/*
Qt::CheckState checkState () const
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_CHECKSTATE )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->checkState (  ) );
  }
}

/*
virtual QTableWidgetItem * clone () const
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_CLONE )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QTableWidgetItem * ptr = obj->clone (  );
    _qt5xhb_createReturnClass ( ptr, "QTABLEWIDGETITEM" );
  }
}

/*
int column () const
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_COLUMN )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->column (  ) );
  }
}

/*
virtual QVariant data ( int role ) const
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_DATA )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QVariant * ptr = new QVariant( obj->data ( (int) hb_parni(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Qt::ItemFlags flags () const
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_FLAGS )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->flags (  ) );
  }
}

/*
QFont font () const
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_FONT )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QFont * ptr = new QFont( obj->font (  ) );
    _qt5xhb_createReturnClass ( ptr, "QFONT", true );
  }
}

/*
QBrush foreground () const
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_FOREGROUND )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QBrush * ptr = new QBrush( obj->foreground (  ) );
    _qt5xhb_createReturnClass ( ptr, "QBRUSH", true );
  }
}

/*
QIcon icon () const
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_ICON )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QIcon * ptr = new QIcon( obj->icon (  ) );
    _qt5xhb_createReturnClass ( ptr, "QICON", true );
  }
}

/*
bool isSelected () const
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_ISSELECTED )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isSelected (  ) );
  }
}

/*
virtual void read ( QDataStream & in )
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_READ )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

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
int row () const
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_ROW )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->row (  ) );
  }
}

/*
void setBackground ( const QBrush & brush )
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_SETBACKGROUND )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

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
void setCheckState ( Qt::CheckState state )
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_SETCHECKSTATE )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

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
virtual void setData ( int role, const QVariant & value )
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_SETDATA )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISQVARIANT(2) )
    {
      QVariant * par2 = (QVariant *) _qt5xhb_itemGetPtr(2);
      obj->setData ( (int) hb_parni(1), *par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFlags ( Qt::ItemFlags flags )
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_SETFLAGS )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

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
void setFont ( const QFont & font )
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_SETFONT )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

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
void setForeground ( const QBrush & brush )
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_SETFOREGROUND )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

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
void setIcon ( const QIcon & icon )
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_SETICON )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

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
void setSelected ( bool select )
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_SETSELECTED )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

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
void setSizeHint ( const QSize & size )
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_SETSIZEHINT )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

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
void setStatusTip ( const QString & statusTip )
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_SETSTATUSTIP )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

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
void setText ( const QString & text )
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_SETTEXT )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

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
void setTextAlignment ( int alignment )
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_SETTEXTALIGNMENT )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setTextAlignment ( (int) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setToolTip ( const QString & toolTip )
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_SETTOOLTIP )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

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
void setWhatsThis ( const QString & whatsThis )
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_SETWHATSTHIS )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

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
QSize sizeHint () const
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_SIZEHINT )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
QString statusTip () const
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_STATUSTIP )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( (const char *) obj->statusTip (  ).toLatin1().data() );
  }
}

/*
QTableWidget * tableWidget () const
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_TABLEWIDGET )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QTableWidget * ptr = obj->tableWidget (  );
    _qt5xhb_createReturnClass ( ptr, "QTABLEWIDGET" );
  }
}

/*
QString text () const
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_TEXT )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( (const char *) obj->text (  ).toLatin1().data() );
  }
}

/*
int textAlignment () const
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_TEXTALIGNMENT )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->textAlignment (  ) );
  }
}

/*
QString toolTip () const
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_TOOLTIP )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( (const char *) obj->toolTip (  ).toLatin1().data() );
  }
}

/*
int type () const
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_TYPE )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->type (  ) );
  }
}

/*
QString whatsThis () const
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_WHATSTHIS )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( (const char *) obj->whatsThis (  ).toLatin1().data() );
  }
}

/*
virtual void write ( QDataStream & out ) const
*/
HB_FUNC_STATIC( QTABLEWIDGETITEM_WRITE )
{
  QTableWidgetItem * obj = (QTableWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

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

HB_FUNC_STATIC( QTABLEWIDGETITEM_NEWFROM )
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

HB_FUNC_STATIC( QTABLEWIDGETITEM_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTABLEWIDGETITEM_NEWFROM );
}

HB_FUNC_STATIC( QTABLEWIDGETITEM_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTABLEWIDGETITEM_NEWFROM );
}

HB_FUNC_STATIC( QTABLEWIDGETITEM_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QTABLEWIDGETITEM_SETSELFDESTRUCTION )
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

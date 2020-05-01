/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS HStyledItemDelegate INHERIT QStyledItemDelegate

   METHOD new
   METHOD delete
//   METHOD paint
   METHOD defaultPaint
//   METHOD sizeHint
//   METHOD displayText

   METHOD setPaintCB
   METHOD setSizeHintCB
   METHOD setDisplayTextCB
   METHOD setCreateEditorCB
   METHOD setEditorDataCB
   METHOD setModelDataCB
   METHOD setUpdateEditorGeometryCB

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS HStyledItemDelegate
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include "HStyledItemDelegate.h"

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

/*
explicit HStyledItemDelegate( QObject *parent = 0 )
*/
void HStyledItemDelegate_new1 ()
{
  HStyledItemDelegate * obj = new HStyledItemDelegate( OPQOBJECT(1,0) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
HStyledItemDelegate( PHB_ITEM paintBlock, QObject *parent = 0 )
*/
void HStyledItemDelegate_new2 ()
{
  HStyledItemDelegate * obj = new HStyledItemDelegate( PBLOCKORSYMBOL(1), OPQOBJECT(2,0) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
HStyledItemDelegate( PHB_ITEM paintBlock, PHB_ITEM sizeHintBlock, QObject *parent = 0 )
*/
void HStyledItemDelegate_new3 ()
{
  HStyledItemDelegate * obj = new HStyledItemDelegate( PBLOCKORSYMBOL(1), PBLOCKORSYMBOL(2), OPQOBJECT(3,0) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
[1]explicit HStyledItemDelegate( QObject *parent = 0 )
[2]HStyledItemDelegate( PHB_ITEM paintBlock, QObject *parent = 0 )
[3]HStyledItemDelegate( PHB_ITEM paintBlock, PHB_ITEM sizeHintBlock, QObject *parent = 0 )
*/

HB_FUNC_STATIC( HSTYLEDITEMDELEGATE_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    HStyledItemDelegate_new1();
  }
  else if( ISBETWEEN(1,2) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    HStyledItemDelegate_new2();
  }
  else if( ISBETWEEN(2,3) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    HStyledItemDelegate_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~HStyledItemDelegate()
*/
HB_FUNC_STATIC( HSTYLEDITEMDELEGATE_DELETE )
{
  HStyledItemDelegate * obj = (HStyledItemDelegate *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Events_disconnect_all_events(obj, true);
    Signals_disconnect_all_signals(obj, true);
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
void paint( QPainter *painter, const QStyleOptionViewItem &option, const QModelIndex &index ) const
*/
// HB_FUNC_STATIC( HSTYLEDITEMDELEGATE_PAINT )
// {
// }

/*
void defaultPaint( QPainter *painter, const QStyleOptionViewItem &option, const QModelIndex &index ) const
*/
HB_FUNC_STATIC( HSTYLEDITEMDELEGATE_DEFAULTPAINT )
{
  HStyledItemDelegate * obj = (HStyledItemDelegate *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISQPAINTER(1) && ISQSTYLEOPTIONVIEWITEM(2) && ISQMODELINDEX(3) )
    {
#endif
      obj->defaultPaint( PQPAINTER(1), *PQSTYLEOPTIONVIEWITEM(2), *PQMODELINDEX(3) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );

}

/*
QSize sizeHint( const QStyleOptionViewItem &option, const QModelIndex &index ) const
*/
// HB_FUNC_STATIC( HSTYLEDITEMDELEGATE_SIZEHINT )
// {
// }

/*
QString displayText( const QVariant &value, const QLocale &locale ) const
*/

/*
QWidget * createEditor( QWidget *parent, const QStyleOptionViewItem &option, const QModelIndex &index ) const
*/

/*
void setEditorData( QWidget *editor, const QModelIndex &index ) const
*/

/*
void setModelData( QWidget *editor, QAbstractItemModel *model, const QModelIndex &index ) const
*/

/*
void updateEditorGeometry( QWidget *editor, const QStyleOptionViewItem &option, const QModelIndex &index ) const
*/

/*
void setPaintCB( PHB_ITEM block )
*/
HB_FUNC_STATIC( HSTYLEDITEMDELEGATE_SETPAINTCB )
{
  HStyledItemDelegate * obj = (HStyledItemDelegate *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) )
    {
#endif
      obj->setPaintCB( PBLOCKORSYMBOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSizeHintCB( PHB_ITEM block )
*/
HB_FUNC_STATIC( HSTYLEDITEMDELEGATE_SETSIZEHINTCB )
{
  HStyledItemDelegate * obj = (HStyledItemDelegate *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) )
    {
#endif
      obj->setSizeHintCB( PBLOCKORSYMBOL(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDisplayTextCB( PHB_ITEM block )
*/
HB_FUNC_STATIC( HSTYLEDITEMDELEGATE_SETDISPLAYTEXTCB )
{
  HStyledItemDelegate * obj = (HStyledItemDelegate *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) )
    {
#endif
      obj->setDisplayTextCB( PBLOCKORSYMBOL(3) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCreateEditorCB( PHB_ITEM block )
*/
HB_FUNC_STATIC( HSTYLEDITEMDELEGATE_SETCREATEEDITORCB )
{
  HStyledItemDelegate * obj = (HStyledItemDelegate *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) )
    {
#endif
      obj->setCreateEditorCB( PBLOCKORSYMBOL(4) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setEditorDataCB( PHB_ITEM block )
*/
HB_FUNC_STATIC( HSTYLEDITEMDELEGATE_SETEDITORDATACB )
{
  HStyledItemDelegate * obj = (HStyledItemDelegate *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) )
    {
#endif
      obj->setEditorDataCB( PBLOCKORSYMBOL(5) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setModelDataCB( PHB_ITEM block )
*/
HB_FUNC_STATIC( HSTYLEDITEMDELEGATE_SETMODELDATACB )
{
  HStyledItemDelegate * obj = (HStyledItemDelegate *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) )
    {
#endif
      obj->setModelDataCB( PBLOCKORSYMBOL(6) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setUpdateEditorGeometryCB( PHB_ITEM block )
*/
HB_FUNC_STATIC( HSTYLEDITEMDELEGATE_SETUPDATEEDITORGEOMETRYCB )
{
  HStyledItemDelegate * obj = (HStyledItemDelegate *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) )
    {
#endif
      obj->setUpdateEditorGeometryCB( PBLOCKORSYMBOL(7) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP

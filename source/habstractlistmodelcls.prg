/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS HAbstractListModel INHERIT QAbstractListModel

   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   METHOD setRowCountCB

   METHOD setDisplayRoleCB
   METHOD setDecorationRoleCB
   METHOD setEditRoleCB
   METHOD setToolTipRoleCB
   METHOD setStatusTipRoleCB
   METHOD setWhatsThisRoleCB
   METHOD setSizeHintRoleCB
   METHOD setFontRoleCB
   METHOD setTextAlignmentRoleCB
   METHOD setBackgroundRoleCB
   METHOD setForegroundRoleCB

   METHOD setHorizontalHeaderDisplayRoleCB
   METHOD setHorizontalHeaderDecorationRoleCB
   METHOD setHorizontalHeaderFontRoleCB
   METHOD setHorizontalHeaderTextAlignmentRoleCB
   METHOD setHorizontalHeaderBackgroundRoleCB
   METHOD setHorizontalHeaderForegroundRoleCB

   METHOD setVerticalHeaderDisplayRoleCB
   METHOD setVerticalHeaderDecorationRoleCB
   METHOD setVerticalHeaderFontRoleCB
   METHOD setVerticalHeaderTextAlignmentRoleCB
   METHOD setVerticalHeaderBackgroundRoleCB
   METHOD setVerticalHeaderForegroundRoleCB

   METHOD reloadData

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS HAbstractListModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

CLASS HDBFListModel INHERIT HAbstractListModel
END CLASS

CLASS HArrayListModel INHERIT HAbstractListModel
END CLASS

#pragma BEGINDUMP

#include <habstractlistmodel.h>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

HB_FUNC_STATIC( HABSTRACTLISTMODEL_NEW )
{
  HAbstractListModel * o = NULL;
  QObject * parent = ISNIL(1)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new HAbstractListModel ( parent );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(HAbstractListModel *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

HB_FUNC_STATIC( HABSTRACTLISTMODEL_DELETE )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
  linhas
*/

HB_FUNC_STATIC( HABSTRACTLISTMODEL_SETROWCOUNTCB )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->setRowCountCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
  células
*/

HB_FUNC_STATIC( HABSTRACTLISTMODEL_SETDISPLAYROLECB )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->setDisplayRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTLISTMODEL_SETDECORATIONROLECB )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->setDecorationRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTLISTMODEL_SETEDITROLECB )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->setEditRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTLISTMODEL_SETTOOLTIPROLECB )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->setToolTipRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTLISTMODEL_SETSTATUSTIPROLECB )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->setStatusTipRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTLISTMODEL_SETWHATSTHISROLECB )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->setWhatsThisRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTLISTMODEL_SETSIZEHINTROLECB )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->setSizeHintRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTLISTMODEL_SETFONTROLECB )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->setFontRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTLISTMODEL_SETTEXTALIGNMENTROLECB )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->setTextAlignmentRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTLISTMODEL_SETBACKGROUNDROLECB )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->setBackgroundRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTLISTMODEL_SETFOREGROUNDROLECB )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->setForegroundRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
  cabeçalho horizontal
*/

HB_FUNC_STATIC( HABSTRACTLISTMODEL_SETHORIZONTALHEADERDISPLAYROLECB )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->setHorizontalHeaderDisplayRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTLISTMODEL_SETHORIZONTALHEADERDECORATIONROLECB )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->setHorizontalHeaderDecorationRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTLISTMODEL_SETHORIZONTALHEADERFONTROLECB )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->setHorizontalHeaderFontRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTLISTMODEL_SETHORIZONTALHEADERTEXTALIGNMENTROLECB )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->setHorizontalHeaderTextAlignmentRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTLISTMODEL_SETHORIZONTALHEADERBACKGROUNDROLECB )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->setHorizontalHeaderBackgroundRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTLISTMODEL_SETHORIZONTALHEADERFOREGROUNDROLECB )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->setHorizontalHeaderForegroundRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
  cabeçalho vertical
*/

HB_FUNC_STATIC( HABSTRACTLISTMODEL_SETVERTICALHEADERDISPLAYROLECB )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->setVerticalHeaderDisplayRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTLISTMODEL_SETVERTICALHEADERDECORATIONROLECB )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->setVerticalHeaderDecorationRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTLISTMODEL_SETVERTICALHEADERFONTROLECB )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->setVerticalHeaderFontRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTLISTMODEL_SETVERTICALHEADERTEXTALIGNMENTROLECB )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->setVerticalHeaderTextAlignmentRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTLISTMODEL_SETVERTICALHEADERBACKGROUNDROLECB )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->setVerticalHeaderBackgroundRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTLISTMODEL_SETVERTICALHEADERFOREGROUNDROLECB )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->setVerticalHeaderForegroundRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTLISTMODEL_RELOADDATA )
{
  HAbstractListModel * obj = (HAbstractListModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->reloadData();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

REQUEST QMODELINDEX

CLASS HAbstractTableModel INHERIT QAbstractTableModel

   DATA class_id INIT Class_Id_QAbstractTableModel
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete

   METHOD setRowCountCB
   METHOD setColumnCountCB

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

PROCEDURE destroyObject () CLASS HAbstractTableModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

CLASS HDBFTableModel INHERIT HAbstractTableModel
END CLASS

CLASS HArrayTableModel INHERIT HAbstractTableModel
END CLASS

#pragma BEGINDUMP

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2013 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <habstracttablemodel.h>

#include "hbapi.h"
#include "hbapiitm.h"
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

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_NEW )
{
  HAbstractTableModel * o = NULL;
  QObject * parent = ISNIL(1)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new HAbstractTableModel ( parent );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(HAbstractTableModel *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_DELETE )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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

// linhas e colunas

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETROWCOUNTCB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setRowCountCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETCOLUMNCOUNTCB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setColumnCountCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

// células

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETDISPLAYROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDisplayRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETDECORATIONROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDecorationRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETEDITROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setEditRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETTOOLTIPROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setToolTipRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETSTATUSTIPROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setStatusTipRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETWHATSTHISROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setWhatsThisRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETSIZEHINTROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSizeHintRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETFONTROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFontRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETTEXTALIGNMENTROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTextAlignmentRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETBACKGROUNDROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setBackgroundRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETFOREGROUNDROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setForegroundRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

// cabeçalho horizontal

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETHORIZONTALHEADERDISPLAYROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setHorizontalHeaderDisplayRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETHORIZONTALHEADERDECORATIONROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setHorizontalHeaderDecorationRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETHORIZONTALHEADERFONTROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setHorizontalHeaderFontRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETHORIZONTALHEADERTEXTALIGNMENTROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setHorizontalHeaderTextAlignmentRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETHORIZONTALHEADERBACKGROUNDROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setHorizontalHeaderBackgroundRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETHORIZONTALHEADERFOREGROUNDROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setHorizontalHeaderForegroundRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

// cabeçalho vertical

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETVERTICALHEADERDISPLAYROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setVerticalHeaderDisplayRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETVERTICALHEADERDECORATIONROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setVerticalHeaderDecorationRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETVERTICALHEADERFONTROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setVerticalHeaderFontRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETVERTICALHEADERTEXTALIGNMENTROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setVerticalHeaderTextAlignmentRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETVERTICALHEADERBACKGROUNDROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setVerticalHeaderBackgroundRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETVERTICALHEADERFOREGROUNDROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setVerticalHeaderForegroundRoleCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODEL_RELOADDATA )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->reloadData();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

// HB_FUNC_STATIC( HABSTRACTTABLEMODEL_CREATEINDEX )
// {
//   HAbstractTableModel * obj = (HAbstractTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
//   if( obj )
//   {
//     QModelIndex * ptr = new QModelIndex( obj->createIndex ( hb_parni(1), hb_parni(2) ) );
//     _qt4xhb_createReturnClass ( ptr, "QMODELINDEX" );  }
// }

#pragma ENDDUMP

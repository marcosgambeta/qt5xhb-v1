/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMODELINDEX
#endif

CLASS HAbstractTableModelV2 INHERIT QAbstractTableModel

   METHOD new
   METHOD delete

   METHOD setRowCountCB
   METHOD setColumnCountCB
   METHOD setDataCB
   METHOD setHeaderDataCB
   METHOD setFlagsCB
   METHOD setSetDataCB

   METHOD reloadData

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS HAbstractTableModelV2
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include "HAbstractTableModelV2.h"

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

HB_FUNC_STATIC( HABSTRACTTABLEMODELV2_NEW )
{
  HAbstractTableModelV2 * o = NULL;
  o = new HAbstractTableModelV2 ( OPQOBJECT(1,0) );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(HAbstractTableModelV2 *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODELV2_DELETE )
{
  HAbstractTableModelV2 * obj = (HAbstractTableModelV2 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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

HB_FUNC_STATIC( HABSTRACTTABLEMODELV2_SETROWCOUNTCB )
{
  HAbstractTableModelV2 * obj = (HAbstractTableModelV2 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->setRowCountCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODELV2_SETCOLUMNCOUNTCB )
{
  HAbstractTableModelV2 * obj = (HAbstractTableModelV2 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->setColumnCountCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODELV2_SETDATACB )
{
  HAbstractTableModelV2 * obj = (HAbstractTableModelV2 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->setDataCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODELV2_SETHEADERDATACB )
{
  HAbstractTableModelV2 * obj = (HAbstractTableModelV2 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->setHeaderDataCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODELV2_SETFLAGSCB )
{
  HAbstractTableModelV2 * obj = (HAbstractTableModelV2 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->setFlagsCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODELV2_SETSETDATACB )
{
  HAbstractTableModelV2 * obj = (HAbstractTableModelV2 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->setSetDataCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HABSTRACTTABLEMODELV2_RELOADDATA )
{
  HAbstractTableModelV2 * obj = (HAbstractTableModelV2 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->reloadData();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP

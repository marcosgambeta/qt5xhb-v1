/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QTileRules

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTileRules
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QTileRules>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QTileRules>
#endif

/*
QTileRules(Qt::TileRule horizontalRule, Qt::TileRule verticalRule)
*/
void QTileRules_new1 ()
{
  QTileRules * o = new QTileRules ( (Qt::TileRule) hb_parni(1), (Qt::TileRule) hb_parni(2) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTileRules(Qt::TileRule rule = Qt::StretchTile)
*/
void QTileRules_new2 ()
{
  int par1 = ISNIL(1)? (int) Qt::StretchTile : hb_parni(1);
  QTileRules * o = new QTileRules ( (Qt::TileRule) par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QTileRules(Qt::TileRule horizontalRule, Qt::TileRule verticalRule)
//[2]QTileRules(Qt::TileRule rule = Qt::StretchTile)

HB_FUNC_STATIC( QTILERULES_NEW )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QTileRules_new1();
  }
  else if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QTileRules_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTILERULES_DELETE )
{
  QTileRules * obj = (QTileRules *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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

HB_FUNC_STATIC( QTILERULES_NEWFROM )
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

HB_FUNC_STATIC( QTILERULES_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTILERULES_NEWFROM );
}

HB_FUNC_STATIC( QTILERULES_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTILERULES_NEWFROM );
}

HB_FUNC_STATIC( QTILERULES_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QTILERULES_SETSELFDESTRUCTION )
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

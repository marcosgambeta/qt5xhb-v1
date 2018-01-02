/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

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

PROCEDURE destroyObject () CLASS HStyledItemDelegate
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <HStyledItemDelegate.h>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

void HStyledItemDelegate_new1 ()
{
  HStyledItemDelegate * o = NULL;
  o = new HStyledItemDelegate ( OPQOBJECT(1,0) );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(HStyledItemDelegate *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

void HStyledItemDelegate_new2 ()
{
  HStyledItemDelegate * o = NULL;
  PHB_ITEM paintCB = hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL );
  o = new HStyledItemDelegate ( paintCB, OPQOBJECT(2,0) );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(HStyledItemDelegate *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

void HStyledItemDelegate_new3 ()
{
  HStyledItemDelegate * o = NULL;
  PHB_ITEM paintCB = hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL );
  PHB_ITEM sizeHintCB = hb_param( 2, HB_IT_BLOCK | HB_IT_SYMBOL );
  o = new HStyledItemDelegate ( paintCB, sizeHintCB, OPQOBJECT(3,0) );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(HStyledItemDelegate *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

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

HB_FUNC_STATIC( HSTYLEDITEMDELEGATE_DELETE )
{
  HStyledItemDelegate * obj = (HStyledItemDelegate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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

// HB_FUNC_STATIC( HSTYLEDITEMDELEGATE_PAINT )
// {
// }

HB_FUNC_STATIC( HSTYLEDITEMDELEGATE_DEFAULTPAINT )
{
  HStyledItemDelegate * obj = (HStyledItemDelegate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->defaultPaint( PQPAINTER(1), *PQSTYLEOPTIONVIEWITEM(2), *PQMODELINDEX(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );

}

// HB_FUNC_STATIC( HSTYLEDITEMDELEGATE_SIZEHINT )
// {
// }

HB_FUNC_STATIC( HSTYLEDITEMDELEGATE_SETPAINTCB )
{
  HStyledItemDelegate * obj = (HStyledItemDelegate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->setPaintCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HSTYLEDITEMDELEGATE_SETSIZEHINTCB )
{
  HStyledItemDelegate * obj = (HStyledItemDelegate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->setSizeHintCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HSTYLEDITEMDELEGATE_SETDISPLAYTEXTCB )
{
  HStyledItemDelegate * obj = (HStyledItemDelegate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->setDisplayTextCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HSTYLEDITEMDELEGATE_SETCREATEEDITORCB )
{
  HStyledItemDelegate * obj = (HStyledItemDelegate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->setCreateEditorCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HSTYLEDITEMDELEGATE_SETEDITORDATACB )
{
  HStyledItemDelegate * obj = (HStyledItemDelegate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->setEditorDataCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HSTYLEDITEMDELEGATE_SETMODELDATACB )
{
  HStyledItemDelegate * obj = (HStyledItemDelegate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->setModelDataCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( HSTYLEDITEMDELEGATE_SETUPDATEEDITORGEOMETRYCB )
{
  HStyledItemDelegate * obj = (HStyledItemDelegate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->setUpdateEditorGeometryCB ( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP

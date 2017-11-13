/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS HCodeBlockValidator INHERIT QValidator

   METHOD new
   METHOD delete
   METHOD validate
   METHOD fixup

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS HCodeBlockValidator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <hcodeblockvalidator.h>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

void HCodeBlockValidator_new1 ()
{
  HCodeBlockValidator * o = NULL;
  o = new HCodeBlockValidator ( OPQOBJECT(1,0) );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(HCodeBlockValidator *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

void HCodeBlockValidator_new2 ()
{
  HCodeBlockValidator * o = NULL;
  PHB_ITEM block = hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL );
  o = new HCodeBlockValidator ( block, OPQOBJECT(2,0) );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(HCodeBlockValidator *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

HB_FUNC_STATIC( HCODEBLOCKVALIDATOR_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    HCodeBlockValidator_new1();
  }
  else if( ISBETWEEN(1,2) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    HCodeBlockValidator_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( HCODEBLOCKVALIDATOR_DELETE )
{
  HCodeBlockValidator * obj = (HCodeBlockValidator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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

HB_FUNC_STATIC( HCODEBLOCKVALIDATOR_VALIDATE )
{
}

HB_FUNC_STATIC( HCODEBLOCKVALIDATOR_FIXUP )
{
}

#pragma ENDDUMP

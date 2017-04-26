/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS HCodeBlockValidator INHERIT QValidator

   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

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
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

void HCodeBlockValidator_new1 ()
{
  HCodeBlockValidator * o = NULL;
  QObject * parent = ISNIL(1)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new HCodeBlockValidator ( parent );
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
  QObject * parent = ISNIL(2)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new HCodeBlockValidator ( block, parent );
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

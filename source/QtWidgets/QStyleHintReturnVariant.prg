/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QStyleHintReturnVariant INHERIT QStyleHintReturn

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStyleHintReturnVariant
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QStyleHintReturnVariant>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QStyleHintReturnVariant>
#endif

/*
QStyleHintReturnVariant()
*/
HB_FUNC_STATIC( QSTYLEHINTRETURNVARIANT_NEW )
{
  QStyleHintReturnVariant * o = new QStyleHintReturnVariant ();
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QSTYLEHINTRETURNVARIANT_DELETE )
{
  QStyleHintReturnVariant * obj = (QStyleHintReturnVariant *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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



#pragma ENDDUMP

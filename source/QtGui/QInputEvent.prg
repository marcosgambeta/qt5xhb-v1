/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QInputEvent INHERIT QEvent

   METHOD delete
   METHOD modifiers

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QInputEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QInputEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QInputEvent>
#endif

HB_FUNC_STATIC( QINPUTEVENT_DELETE )
{
  QInputEvent * obj = (QInputEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
Qt::KeyboardModifiers modifiers () const
*/
HB_FUNC_STATIC( QINPUTEVENT_MODIFIERS )
{
  QInputEvent * obj = (QInputEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->modifiers () );
  }
}



#pragma ENDDUMP

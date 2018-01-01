/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QWinCompositionChangeEvent INHERIT QWinEvent

   METHOD new
   METHOD delete
   METHOD isCompositionEnabled

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWinCompositionChangeEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QWinCompositionChangeEvent>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QWinCompositionChangeEvent>
#endif
#endif

/*
explicit QWinCompositionChangeEvent(bool enabled)
*/
HB_FUNC_STATIC( QWINCOMPOSITIONCHANGEEVENT_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  bool par1 = hb_parl(1);
  QWinCompositionChangeEvent * o = new QWinCompositionChangeEvent ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}


HB_FUNC_STATIC( QWINCOMPOSITIONCHANGEEVENT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinCompositionChangeEvent * obj = (QWinCompositionChangeEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
#endif
}

/*
bool isCompositionEnabled() const
*/
HB_FUNC_STATIC( QWINCOMPOSITIONCHANGEEVENT_ISCOMPOSITIONENABLED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinCompositionChangeEvent * obj = (QWinCompositionChangeEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isCompositionEnabled () );
  }
#endif
}



#pragma ENDDUMP

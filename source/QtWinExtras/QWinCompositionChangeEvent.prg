/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"


CLASS QWinCompositionChangeEvent INHERIT QWinEvent

   DATA class_id INIT Class_Id_QWinCompositionChangeEvent
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

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
#include "qt5xhb_clsid.h"
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
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QWinCompositionChangeEvent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
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
    hb_retl( obj->isCompositionEnabled (  ) );
  }
#endif
}



#pragma ENDDUMP

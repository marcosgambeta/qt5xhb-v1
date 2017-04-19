/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

CLASS QWindowStateChangeEvent INHERIT QEvent

   DATA class_id INIT Class_Id_QWindowStateChangeEvent
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD oldState
   METHOD isOverride

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWindowStateChangeEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QWindowStateChangeEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QWindowStateChangeEvent>
#endif

/*
QWindowStateChangeEvent(Qt::WindowStates aOldState, bool isOverride = false)
*/
HB_FUNC_STATIC( QWINDOWSTATECHANGEEVENT_NEW )
{
  int par1 = hb_parni(1);
  bool par2 = ISNIL(2)? false : hb_parl(2);
  QWindowStateChangeEvent * o = new QWindowStateChangeEvent (  (Qt::WindowStates) par1, par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QWINDOWSTATECHANGEEVENT_DELETE )
{
  QWindowStateChangeEvent * obj = (QWindowStateChangeEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
Qt::WindowStates oldState() const
*/
HB_FUNC_STATIC( QWINDOWSTATECHANGEEVENT_OLDSTATE )
{
  QWindowStateChangeEvent * obj = (QWindowStateChangeEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->oldState (  ) );
  }
}


/*
bool isOverride() const
*/
HB_FUNC_STATIC( QWINDOWSTATECHANGEEVENT_ISOVERRIDE )
{
  QWindowStateChangeEvent * obj = (QWindowStateChangeEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isOverride (  ) );
  }
}



#pragma ENDDUMP

/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QWindowStateChangeEvent INHERIT QEvent

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
#include "qt5xhb_macros.h"
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
  QWindowStateChangeEvent * o = new QWindowStateChangeEvent ( (Qt::WindowStates) par1, OPBOOL(2,false) );
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
    hb_retni( obj->oldState () );
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
    RBOOL( obj->isOverride () );
  }
}



#pragma ENDDUMP

/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QDBusPendingCallWatcher INHERIT QObject,QDBusPendingCall

   METHOD new
   METHOD delete
   METHOD isFinished
   METHOD waitForFinished

   METHOD onFinished

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDBusPendingCallWatcher
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDBusPendingCallWatcher>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDBusPendingCallWatcher>
#endif

/*
explicit QDBusPendingCallWatcher(const QDBusPendingCall &call, QObject *parent = 0)
*/
HB_FUNC_STATIC( QDBUSPENDINGCALLWATCHER_NEW )
{
  QDBusPendingCallWatcher * o = new QDBusPendingCallWatcher ( OPQOBJECT(2,0) );
  _qt5xhb_returnNewObject( o, false );
}


HB_FUNC_STATIC( QDBUSPENDINGCALLWATCHER_DELETE )
{
  QDBusPendingCallWatcher * obj = (QDBusPendingCallWatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool isFinished() const
*/
HB_FUNC_STATIC( QDBUSPENDINGCALLWATCHER_ISFINISHED )
{
  QDBusPendingCallWatcher * obj = (QDBusPendingCallWatcher *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isFinished () );
  }
}


/*
void waitForFinished()
*/
HB_FUNC_STATIC( QDBUSPENDINGCALLWATCHER_WAITFORFINISHED )
{
  QDBusPendingCallWatcher * obj = (QDBusPendingCallWatcher *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->waitForFinished ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP

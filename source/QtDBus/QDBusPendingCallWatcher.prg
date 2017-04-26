/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QDBusPendingCallWatcher INHERIT QObject,QDBusPendingCall

   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

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
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDBusPendingCallWatcher>
#endif

/*
explicit QDBusPendingCallWatcher(const QDBusPendingCall &call, QObject *parent = 0)
*/
HB_FUNC_STATIC( QDBUSPENDINGCALLWATCHER_NEW )
{
  QObject * par2 = ISNIL(2)? 0 : (QObject *) _qt5xhb_itemGetPtr(2);
  QDBusPendingCallWatcher * o = new QDBusPendingCallWatcher ( par2 );
  _qt5xhb_storePointerAndFlag( o, false );
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
    hb_retl( obj->isFinished (  ) );
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
    obj->waitForFinished (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP

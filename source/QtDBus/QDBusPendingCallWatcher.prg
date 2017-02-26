/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QDBusPendingCallWatcher INHERIT QObject,QDBusPendingCall

   DATA class_id INIT Class_Id_QDBusPendingCallWatcher
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QDBusPendingCallWatcher>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt4xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QDBusPendingCallWatcher>
#endif
#endif

/*
explicit QDBusPendingCallWatcher(const QDBusPendingCall &call, QObject *parent = 0)
*/
HB_FUNC_STATIC( QDBUSPENDINGCALLWATCHER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject * par2 = ISNIL(2)? 0 : (QObject *) _qtxhb_itemGetPtr(2);
  QDBusPendingCallWatcher * o = new QDBusPendingCallWatcher ( par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDBusPendingCallWatcher *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QDBUSPENDINGCALLWATCHER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
bool isFinished() const
*/
HB_FUNC_STATIC( QDBUSPENDINGCALLWATCHER_ISFINISHED )
{
  QDBusPendingCallWatcher * obj = (QDBusPendingCallWatcher *) _qtxhb_itemGetPtrStackSelfItem();
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
  QDBusPendingCallWatcher * obj = (QDBusPendingCallWatcher *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->waitForFinished (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP

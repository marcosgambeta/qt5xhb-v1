/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QDBusPendingCallWatcher INHERIT QObject,QDBusPendingCall

   METHOD new
   METHOD delete
   METHOD isFinished
   METHOD waitForFinished

   METHOD onFinished

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDBusPendingCallWatcher
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDBus/QDBusPendingCallWatcher>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtDBus/QDBusPendingCallWatcher>
#endif

/*
QDBusPendingCallWatcher( const QDBusPendingCall & call, QObject * parent = 0 )
*/
HB_FUNC_STATIC( QDBUSPENDINGCALLWATCHER_NEW )
{
  if( ISBETWEEN(1,2) && ISQDBUSPENDINGCALL(1) && (ISQOBJECT(2)||HB_ISNIL(2)) )
  {
    QDBusPendingCallWatcher * obj = new QDBusPendingCallWatcher( *PQDBUSPENDINGCALL(1), OPQOBJECT(2,0) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QDBUSPENDINGCALLWATCHER_DELETE )
{
  QDBusPendingCallWatcher * obj = (QDBusPendingCallWatcher *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool isFinished() const
*/
HB_FUNC_STATIC( QDBUSPENDINGCALLWATCHER_ISFINISHED )
{
  QDBusPendingCallWatcher * obj = (QDBusPendingCallWatcher *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isFinished() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void waitForFinished()
*/
HB_FUNC_STATIC( QDBUSPENDINGCALLWATCHER_WAITFORFINISHED )
{
  QDBusPendingCallWatcher * obj = (QDBusPendingCallWatcher *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->waitForFinished();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

void QDBusPendingCallWatcherSlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( QDBUSPENDINGCALLWATCHER_ONFINISHED )
{
  QDBusPendingCallWatcherSlots_connect_signal("finished(QDBusPendingCallWatcher*)", "finished(QDBusPendingCallWatcher*)");
}

#pragma ENDDUMP

//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QAbstractEventDispatcher INHERIT QObject

   METHOD delete
   METHOD filterNativeEvent
   METHOD flush
   METHOD hasPendingEvents
   METHOD installNativeEventFilter
   METHOD interrupt
   METHOD processEvents
   METHOD registerEventNotifier
   METHOD registerSocketNotifier
   METHOD registerTimer
   METHOD remainingTime
   METHOD removeNativeEventFilter
   METHOD unregisterEventNotifier
   METHOD unregisterSocketNotifier
   METHOD unregisterTimer
   METHOD unregisterTimers
   METHOD wakeUp
   METHOD instance
   METHOD startingUp
   METHOD closingDown

   METHOD onAboutToBlock
   METHOD onAwake

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAbstractEventDispatcher
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QAbstractEventDispatcher>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtCore/QAbstractEventDispatcher>
#endif

HB_FUNC_STATIC(QABSTRACTEVENTDISPATCHER_DELETE)
{
  QAbstractEventDispatcher *obj = (QAbstractEventDispatcher *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
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
bool filterNativeEvent( const QByteArray &eventType, void * message, long * result )
*/
HB_FUNC_STATIC(QABSTRACTEVENTDISPATCHER_FILTERNATIVEEVENT)
{
  QAbstractEventDispatcher *obj = (QAbstractEventDispatcher *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(3) && ISQBYTEARRAY(1) && HB_ISPOINTER(2) && HB_ISNUM(3))
    {
#endif
      long par3;
      RBOOL(obj->filterNativeEvent(*PQBYTEARRAY(1), (void *)hb_parptr(2), &par3));
      hb_stornl(par3, 3);
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
virtual void flush() = 0
*/
HB_FUNC_STATIC(QABSTRACTEVENTDISPATCHER_FLUSH)
{
  QAbstractEventDispatcher *obj = (QAbstractEventDispatcher *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->flush();
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

/*
virtual bool hasPendingEvents() = 0
*/
HB_FUNC_STATIC(QABSTRACTEVENTDISPATCHER_HASPENDINGEVENTS)
{
  QAbstractEventDispatcher *obj = (QAbstractEventDispatcher *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->hasPendingEvents());
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
void installNativeEventFilter( QAbstractNativeEventFilter * filterObj )
*/
HB_FUNC_STATIC(QABSTRACTEVENTDISPATCHER_INSTALLNATIVEEVENTFILTER)
{
  QAbstractEventDispatcher *obj = (QAbstractEventDispatcher *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQABSTRACTNATIVEEVENTFILTER(1))
    {
#endif
      obj->installNativeEventFilter(PQABSTRACTNATIVEEVENTFILTER(1));
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

/*
virtual void interrupt() = 0
*/
HB_FUNC_STATIC(QABSTRACTEVENTDISPATCHER_INTERRUPT)
{
  QAbstractEventDispatcher *obj = (QAbstractEventDispatcher *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->interrupt();
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

/*
virtual bool processEvents( QEventLoop::ProcessEventsFlags flags ) = 0
*/
HB_FUNC_STATIC(QABSTRACTEVENTDISPATCHER_PROCESSEVENTS)
{
  QAbstractEventDispatcher *obj = (QAbstractEventDispatcher *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RBOOL(obj->processEvents((QEventLoop::ProcessEventsFlags)hb_parni(1)));
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
virtual bool registerEventNotifier( QWinEventNotifier * notifier ) = 0
*/
HB_FUNC_STATIC(QABSTRACTEVENTDISPATCHER_REGISTEREVENTNOTIFIER)
{
#ifdef Q_OS_WIN
  QAbstractEventDispatcher *obj = (QAbstractEventDispatcher *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQWINEVENTNOTIFIER(1))
    {
#endif
      RBOOL(obj->registerEventNotifier(PQWINEVENTNOTIFIER(1)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
virtual void registerSocketNotifier( QSocketNotifier * notifier ) = 0
*/
HB_FUNC_STATIC(QABSTRACTEVENTDISPATCHER_REGISTERSOCKETNOTIFIER)
{
  QAbstractEventDispatcher *obj = (QAbstractEventDispatcher *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQSOCKETNOTIFIER(1))
    {
#endif
      obj->registerSocketNotifier(PQSOCKETNOTIFIER(1));
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

HB_FUNC_STATIC(QABSTRACTEVENTDISPATCHER_REGISTERTIMER)
{
  if (ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && ISQOBJECT(3))
  {
    /*
    int registerTimer( int interval, Qt::TimerType timerType, QObject * object )
    */
    QAbstractEventDispatcher *obj = (QAbstractEventDispatcher *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      RINT(obj->registerTimer(PINT(1), (Qt::TimerType)hb_parni(2), PQOBJECT(3)));
    }
  }
  else if (ISNUMPAR(4) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && ISQOBJECT(4))
  {
    /*
    virtual void registerTimer( int timerId, int interval, Qt::TimerType timerType, QObject * object ) = 0
    */
    QAbstractEventDispatcher *obj = (QAbstractEventDispatcher *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->registerTimer(PINT(1), PINT(2), (Qt::TimerType)hb_parni(3), PQOBJECT(4));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
virtual int remainingTime( int timerId ) = 0
*/
HB_FUNC_STATIC(QABSTRACTEVENTDISPATCHER_REMAININGTIME)
{
  QAbstractEventDispatcher *obj = (QAbstractEventDispatcher *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RINT(obj->remainingTime(PINT(1)));
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
void removeNativeEventFilter( QAbstractNativeEventFilter * filter )
*/
HB_FUNC_STATIC(QABSTRACTEVENTDISPATCHER_REMOVENATIVEEVENTFILTER)
{
  QAbstractEventDispatcher *obj = (QAbstractEventDispatcher *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQABSTRACTNATIVEEVENTFILTER(1))
    {
#endif
      obj->removeNativeEventFilter(PQABSTRACTNATIVEEVENTFILTER(1));
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

/*
virtual void unregisterEventNotifier( QWinEventNotifier * notifier ) = 0
*/
HB_FUNC_STATIC(QABSTRACTEVENTDISPATCHER_UNREGISTEREVENTNOTIFIER)
{
#ifdef Q_OS_WIN
  QAbstractEventDispatcher *obj = (QAbstractEventDispatcher *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQWINEVENTNOTIFIER(1))
    {
#endif
      obj->unregisterEventNotifier(PQWINEVENTNOTIFIER(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
virtual void unregisterSocketNotifier( QSocketNotifier * notifier ) = 0
*/
HB_FUNC_STATIC(QABSTRACTEVENTDISPATCHER_UNREGISTERSOCKETNOTIFIER)
{
  QAbstractEventDispatcher *obj = (QAbstractEventDispatcher *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQSOCKETNOTIFIER(1))
    {
#endif
      obj->unregisterSocketNotifier(PQSOCKETNOTIFIER(1));
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

/*
virtual bool unregisterTimer( int timerId ) = 0
*/
HB_FUNC_STATIC(QABSTRACTEVENTDISPATCHER_UNREGISTERTIMER)
{
  QAbstractEventDispatcher *obj = (QAbstractEventDispatcher *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RBOOL(obj->unregisterTimer(PINT(1)));
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
virtual bool unregisterTimers( QObject * object ) = 0
*/
HB_FUNC_STATIC(QABSTRACTEVENTDISPATCHER_UNREGISTERTIMERS)
{
  QAbstractEventDispatcher *obj = (QAbstractEventDispatcher *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQOBJECT(1))
    {
#endif
      RBOOL(obj->unregisterTimers(PQOBJECT(1)));
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
virtual void wakeUp() = 0
*/
HB_FUNC_STATIC(QABSTRACTEVENTDISPATCHER_WAKEUP)
{
  QAbstractEventDispatcher *obj = (QAbstractEventDispatcher *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->wakeUp();
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

/*
static QAbstractEventDispatcher * instance( QThread * thread = 0 )
*/
HB_FUNC_STATIC(QABSTRACTEVENTDISPATCHER_INSTANCE)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISBETWEEN(0, 1) && (ISQTHREAD(1) || HB_ISNIL(1)))
  {
#endif
    QAbstractEventDispatcher *ptr = QAbstractEventDispatcher::instance(OPQTHREAD(1, 0));
    Qt5xHb::createReturnQObjectClass(ptr, "QABSTRACTEVENTDISPATCHER");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
virtual void startingUp()
*/
HB_FUNC_STATIC(QABSTRACTEVENTDISPATCHER_STARTINGUP)
{
  QAbstractEventDispatcher *obj = (QAbstractEventDispatcher *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->startingUp();
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

/*
virtual void closingDown()
*/
HB_FUNC_STATIC(QABSTRACTEVENTDISPATCHER_CLOSINGDOWN)
{
  QAbstractEventDispatcher *obj = (QAbstractEventDispatcher *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->closingDown();
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

void QAbstractEventDispatcherSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QABSTRACTEVENTDISPATCHER_ONABOUTTOBLOCK)
{
  QAbstractEventDispatcherSlots_connect_signal("aboutToBlock()", "aboutToBlock()");
}

HB_FUNC_STATIC(QABSTRACTEVENTDISPATCHER_ONAWAKE)
{
  QAbstractEventDispatcherSlots_connect_signal("awake()", "awake()");
}

#pragma ENDDUMP

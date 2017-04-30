/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QAbstractEventDispatcher INHERIT QObject

   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

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

PROCEDURE destroyObject () CLASS QAbstractEventDispatcher
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAbstractEventDispatcher>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAbstractEventDispatcher>
#endif

HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_DELETE )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
bool filterNativeEvent(const QByteArray & eventType, void * message, long * result)
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_FILTERNATIVEEVENT )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQBYTEARRAY(1) && ISPOINTER(2) && ISNUM(3) )
    {
      QByteArray * par1 = (QByteArray *) _qt5xhb_itemGetPtr(1);
      void * par2 = (void *) hb_parptr(2);
      long par3;
      hb_retl( obj->filterNativeEvent ( *par1, par2, &par3 ) );
      hb_stornl( par3, 3 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void flush () = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_FLUSH )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->flush (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool hasPendingEvents () = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_HASPENDINGEVENTS )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->hasPendingEvents (  ) );
  }
}

/*
void installNativeEventFilter(QAbstractNativeEventFilter * filterObj)
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_INSTALLNATIVEEVENTFILTER )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQABSTRACTNATIVEEVENTFILTER(1) )
    {
      QAbstractNativeEventFilter * par1 = (QAbstractNativeEventFilter *) _qt5xhb_itemGetPtr(1);
      obj->installNativeEventFilter ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void interrupt () = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_INTERRUPT )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->interrupt (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool processEvents ( QEventLoop::ProcessEventsFlags flags ) = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_PROCESSEVENTS )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      hb_retl( obj->processEvents (  (QEventLoop::ProcessEventsFlags) par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool registerEventNotifier(QWinEventNotifier * notifier) = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_REGISTEREVENTNOTIFIER )
{
#ifdef Q_OS_WIN
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQWINEVENTNOTIFIER(1) )
    {
      QWinEventNotifier * par1 = (QWinEventNotifier *) _qt5xhb_itemGetPtr(1);
      hb_retl( obj->registerEventNotifier ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
virtual void registerSocketNotifier ( QSocketNotifier * notifier ) = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_REGISTERSOCKETNOTIFIER )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQSOCKETNOTIFIER(1) )
    {
      QSocketNotifier * par1 = (QSocketNotifier *) _qt5xhb_itemGetPtr(1);
      obj->registerSocketNotifier ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int registerTimer(int interval, Qt::TimerType timerType, QObject * object)
*/
void QAbstractEventDispatcher_registerTimer1 ()
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par2 = hb_parni(2);
    QObject * par3 = (QObject *) _qt5xhb_itemGetPtr(3);
    hb_retni( obj->registerTimer ( PINT(1),  (Qt::TimerType) par2, par3 ) );
  }
}

/*
virtual void registerTimer(int timerId, int interval, Qt::TimerType timerType, QObject * object) = 0
*/
void QAbstractEventDispatcher_registerTimer2 ()
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par3 = hb_parni(3);
    QObject * par4 = (QObject *) _qt5xhb_itemGetPtr(4);
    obj->registerTimer ( PINT(1), PINT(2),  (Qt::TimerType) par3, par4 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]int registerTimer(int interval, Qt::TimerType timerType, QObject * object)
//[2]virtual void registerTimer(int timerId, int interval, Qt::TimerType timerType, QObject * object) = 0

HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_REGISTERTIMER )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQOBJECT(3) )
  {
    QAbstractEventDispatcher_registerTimer1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISQOBJECT(4) )
  {
    QAbstractEventDispatcher_registerTimer2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual int remainingTime(int timerId) = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_REMAININGTIME )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      hb_retni( obj->remainingTime ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void removeNativeEventFilter(QAbstractNativeEventFilter * filter)
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_REMOVENATIVEEVENTFILTER )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQABSTRACTNATIVEEVENTFILTER(1) )
    {
      QAbstractNativeEventFilter * par1 = (QAbstractNativeEventFilter *) _qt5xhb_itemGetPtr(1);
      obj->removeNativeEventFilter ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void unregisterEventNotifier(QWinEventNotifier * notifier) = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_UNREGISTEREVENTNOTIFIER )
{
#ifdef Q_OS_WIN
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQWINEVENTNOTIFIER(1) )
    {
      QWinEventNotifier * par1 = (QWinEventNotifier *) _qt5xhb_itemGetPtr(1);
      obj->unregisterEventNotifier ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
virtual void unregisterSocketNotifier ( QSocketNotifier * notifier ) = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_UNREGISTERSOCKETNOTIFIER )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQSOCKETNOTIFIER(1) )
    {
      QSocketNotifier * par1 = (QSocketNotifier *) _qt5xhb_itemGetPtr(1);
      obj->unregisterSocketNotifier ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool unregisterTimer ( int timerId ) = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_UNREGISTERTIMER )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      hb_retl( obj->unregisterTimer ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool unregisterTimers ( QObject * object ) = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_UNREGISTERTIMERS )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQOBJECT(1) )
    {
      QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
      hb_retl( obj->unregisterTimers ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void wakeUp () = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_WAKEUP )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->wakeUp (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QAbstractEventDispatcher * instance ( QThread * thread = 0 )
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_INSTANCE )
{
  if( ISQTHREAD(1) )
  {
    QThread * par1 = ISNIL(1)? 0 : (QThread *) _qt5xhb_itemGetPtr(1);
    QAbstractEventDispatcher * ptr = QAbstractEventDispatcher::instance ( par1 );
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTEVENTDISPATCHER" );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual void startingUp()
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_STARTINGUP )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->startingUp (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void closingDown()
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_CLOSINGDOWN )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->closingDown (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP

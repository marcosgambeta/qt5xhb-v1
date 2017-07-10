$header

#include "hbclass.ch"

CLASS QAbstractEventDispatcher INHERIT QObject

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

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

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
      long par3;
      RBOOL( obj->filterNativeEvent ( *PQBYTEARRAY(1), (void *) hb_parptr(2), &par3 ) );
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
$method=|void|flush|

/*
virtual bool hasPendingEvents () = 0
*/
$method=|bool|hasPendingEvents|

/*
void installNativeEventFilter(QAbstractNativeEventFilter * filterObj)
*/
$method=|void|installNativeEventFilter|QAbstractNativeEventFilter *

/*
virtual void interrupt () = 0
*/
$method=|void|interrupt|

/*
virtual bool processEvents ( QEventLoop::ProcessEventsFlags flags ) = 0
*/
$method=|bool|processEvents|QEventLoop::ProcessEventsFlags

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
      RBOOL( obj->registerEventNotifier ( PQWINEVENTNOTIFIER(1) ) );
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
$method=|void|registerSocketNotifier|QSocketNotifier *

/*
int registerTimer(int interval, Qt::TimerType timerType, QObject * object)
*/
$internalMenthod=|int|registerTimer,registerTimer1|int,Qt::TimerType,QObject *

/*
virtual void registerTimer(int timerId, int interval, Qt::TimerType timerType, QObject * object) = 0
*/
$internalMethod=|void|registerTimer,registerTimer2|int,int,Qt::TimerType,QObject *

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
$method=|int|remainingTime|int

/*
void removeNativeEventFilter(QAbstractNativeEventFilter * filter)
*/
$method=|void|removeNativeEventFilter|QAbstractNativeEventFilter *

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
      obj->unregisterEventNotifier ( PQWINEVENTNOTIFIER(1) );
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
$method=|void|unregisterSocketNotifier|QSocketNotifier *

/*
virtual bool unregisterTimer ( int timerId ) = 0
*/
$method=|bool|unregisterTimer|int

/*
virtual bool unregisterTimers ( QObject * object ) = 0
*/
$method=|bool|unregisterTimers|QObject *

/*
virtual void wakeUp () = 0
*/
$method=|void|wakeUp|

/*
static QAbstractEventDispatcher * instance ( QThread * thread = 0 )
*/
$staticMethod=|QAbstractEventDispatcher *|instance|QThread *=0

/*
virtual void startingUp()
*/
$method=|void|startingUp|

/*
virtual void closingDown()
*/
$method=|void|closingDown|

#pragma ENDDUMP

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"



CLASS QAbstractEventDispatcher INHERIT QObject

   DATA class_id INIT Class_Id_QAbstractEventDispatcher
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD filterNativeEvent
   METHOD flush
   METHOD hasPendingEvents
   METHOD installNativeEventFilter
   METHOD interrupt
   METHOD processEvents
   METHOD registerEventNotifier
   METHOD registerSocketNotifier
   METHOD registerTimer1
   METHOD registerTimer2
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QAbstractEventDispatcher>
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
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QAbstractEventDispatcher>
#endif
#endif


HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}


/*
bool filterNativeEvent(const QByteArray & eventType, void * message, long * result)
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_FILTERNATIVEEVENT )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
    void * par2 = (void *) hb_parptr(2);
    long par3;
    hb_retl( obj->filterNativeEvent ( *par1, par2, &par3 ) );
    hb_stornl( par3, 3 );
  }
}


/*
virtual void flush () = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_FLUSH )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qtxhb_itemGetPtrStackSelfItem();
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
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qtxhb_itemGetPtrStackSelfItem();
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
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractNativeEventFilter * par1 = (QAbstractNativeEventFilter *) _qtxhb_itemGetPtr(1);
    obj->installNativeEventFilter ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void interrupt () = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_INTERRUPT )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qtxhb_itemGetPtrStackSelfItem();
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
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->processEvents (  (QEventLoop::ProcessEventsFlags) par1 ) );
  }
}


/*
virtual bool registerEventNotifier(QWinEventNotifier * notifier) = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_REGISTEREVENTNOTIFIER )
{
#ifdef Q_OS_WIN
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWinEventNotifier * par1 = (QWinEventNotifier *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->registerEventNotifier ( par1 ) );
  }
#endif
}


/*
virtual void registerSocketNotifier ( QSocketNotifier * notifier ) = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_REGISTERSOCKETNOTIFIER )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSocketNotifier * par1 = (QSocketNotifier *) _qtxhb_itemGetPtr(1);
    obj->registerSocketNotifier ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int registerTimer(int interval, Qt::TimerType timerType, QObject * object)
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_REGISTERTIMER1 )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = hb_parni(2);
    QObject * par3 = (QObject *) _qtxhb_itemGetPtr(3);
    hb_retni( obj->registerTimer ( (int) hb_parni(1),  (Qt::TimerType) par2, par3 ) );
  }
}

/*
virtual void registerTimer(int timerId, int interval, Qt::TimerType timerType, QObject * object) = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_REGISTERTIMER2 )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par3 = hb_parni(3);
    QObject * par4 = (QObject *) _qtxhb_itemGetPtr(4);
    obj->registerTimer ( (int) hb_parni(1), (int) hb_parni(2),  (Qt::TimerType) par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]int registerTimer(int interval, Qt::TimerType timerType, QObject * object)
//[2]virtual void registerTimer(int timerId, int interval, Qt::TimerType timerType, QObject * object) = 0

HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_REGISTERTIMER )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQOBJECT(3) )
  {
    HB_FUNC_EXEC( QABSTRACTEVENTDISPATCHER_REGISTERTIMER1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISQOBJECT(4) )
  {
    HB_FUNC_EXEC( QABSTRACTEVENTDISPATCHER_REGISTERTIMER2 );
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
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->remainingTime ( (int) hb_parni(1) ) );
  }
}


/*
void removeNativeEventFilter(QAbstractNativeEventFilter * filter)
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_REMOVENATIVEEVENTFILTER )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractNativeEventFilter * par1 = (QAbstractNativeEventFilter *) _qtxhb_itemGetPtr(1);
    obj->removeNativeEventFilter ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
virtual void unregisterEventNotifier(QWinEventNotifier * notifier) = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_UNREGISTEREVENTNOTIFIER )
{
#ifdef Q_OS_WIN
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWinEventNotifier * par1 = (QWinEventNotifier *) _qtxhb_itemGetPtr(1);
    obj->unregisterEventNotifier ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
virtual void unregisterSocketNotifier ( QSocketNotifier * notifier ) = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_UNREGISTERSOCKETNOTIFIER )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSocketNotifier * par1 = (QSocketNotifier *) _qtxhb_itemGetPtr(1);
    obj->unregisterSocketNotifier ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool unregisterTimer ( int timerId ) = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_UNREGISTERTIMER )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->unregisterTimer ( (int) hb_parni(1) ) );
  }
}


/*
virtual bool unregisterTimers ( QObject * object ) = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_UNREGISTERTIMERS )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->unregisterTimers ( par1 ) );
  }
}


/*
virtual void wakeUp () = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_WAKEUP )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qtxhb_itemGetPtrStackSelfItem();
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
  QThread * par1 = ISNIL(1)? 0 : (QThread *) _qtxhb_itemGetPtr(1);
  QAbstractEventDispatcher * ptr = QAbstractEventDispatcher::instance ( par1 );
  _qt4xhb_createReturnClass ( ptr, "QABSTRACTEVENTDISPATCHER" );
}


/*
virtual void startingUp()
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_STARTINGUP )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qtxhb_itemGetPtrStackSelfItem();
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
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->closingDown (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP

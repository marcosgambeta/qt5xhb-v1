/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QABSTRACTEVENTDISPATCHER

CLASS QThread INHERIT QObject

   DATA class_id INIT Class_Id_QThread
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD eventDispatcher
   METHOD exit
   METHOD isFinished
   METHOD isRunning
   METHOD priority
   METHOD setEventDispatcher
   METHOD setPriority
   METHOD setStackSize
   METHOD stackSize
   METHOD event
   METHOD quit
   METHOD start
   METHOD terminate
   METHOD currentThread
   METHOD idealThreadCount
   METHOD msleep
   METHOD sleep
   METHOD usleep
   METHOD yieldCurrentThread
   METHOD onFinished
   METHOD onStarted
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QThread
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QThread>
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
#include <QThread>
#endif
#endif

/*
QThread(QObject * parent = 0)
*/
HB_FUNC_STATIC( QTHREAD_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qtxhb_itemGetPtr(1);
  QThread * o = new QThread ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QThread *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QTHREAD_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QThread * obj = (QThread *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QAbstractEventDispatcher * eventDispatcher() const
*/
HB_FUNC_STATIC( QTHREAD_EVENTDISPATCHER )
{
  QThread * obj = (QThread *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractEventDispatcher * ptr = obj->eventDispatcher (  );
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTEVENTDISPATCHER" );
  }
}


/*
void exit(int returnCode = 0)
*/
HB_FUNC_STATIC( QTHREAD_EXIT )
{
  QThread * obj = (QThread *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->exit ( (int) ISNIL(1)? 0 : hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isFinished() const
*/
HB_FUNC_STATIC( QTHREAD_ISFINISHED )
{
  QThread * obj = (QThread *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isFinished (  ) );
  }
}


/*
bool isRunning() const
*/
HB_FUNC_STATIC( QTHREAD_ISRUNNING )
{
  QThread * obj = (QThread *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isRunning (  ) );
  }
}


/*
Priority priority() const
*/
HB_FUNC_STATIC( QTHREAD_PRIORITY )
{
  QThread * obj = (QThread *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->priority (  );
    hb_retni( i );
  }
}


/*
void setEventDispatcher(QAbstractEventDispatcher * eventDispatcher)
*/
HB_FUNC_STATIC( QTHREAD_SETEVENTDISPATCHER )
{
  QThread * obj = (QThread *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractEventDispatcher * par1 = (QAbstractEventDispatcher *) _qtxhb_itemGetPtr(1);
    obj->setEventDispatcher ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPriority(Priority priority)
*/
HB_FUNC_STATIC( QTHREAD_SETPRIORITY )
{
  QThread * obj = (QThread *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPriority (  (QThread::Priority) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStackSize(uint stackSize)
*/
HB_FUNC_STATIC( QTHREAD_SETSTACKSIZE )
{
  QThread * obj = (QThread *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setStackSize ( (uint) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
uint stackSize() const
*/
HB_FUNC_STATIC( QTHREAD_STACKSIZE )
{
  QThread * obj = (QThread *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->stackSize (  ) );
  }
}



/*
virtual bool event(QEvent * event)
*/
HB_FUNC_STATIC( QTHREAD_EVENT )
{
  QThread * obj = (QThread *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QEvent * par1 = (QEvent *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->event ( par1 ) );
  }
}


/*
void quit()
*/
HB_FUNC_STATIC( QTHREAD_QUIT )
{
  QThread * obj = (QThread *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->quit (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void start(Priority priority = InheritPriority)
*/
HB_FUNC_STATIC( QTHREAD_START )
{
  QThread * obj = (QThread *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QThread::InheritPriority : hb_parni(1);
    obj->start (  (QThread::Priority) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void terminate()
*/
HB_FUNC_STATIC( QTHREAD_TERMINATE )
{
  QThread * obj = (QThread *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->terminate (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static QThread * currentThread()
*/
HB_FUNC_STATIC( QTHREAD_CURRENTTHREAD )
{
  QThread * ptr = QThread::currentThread (  );
  _qt4xhb_createReturnClass ( ptr, "QTHREAD" );
}



/*
static int idealThreadCount()
*/
HB_FUNC_STATIC( QTHREAD_IDEALTHREADCOUNT )
{
  hb_retni( QThread::idealThreadCount (  ) );
}


/*
static void msleep(unsigned long msecs)
*/
HB_FUNC_STATIC( QTHREAD_MSLEEP )
{
  unsigned long par1 = hb_parnl(1);
  QThread::msleep ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void sleep(unsigned long secs)
*/
HB_FUNC_STATIC( QTHREAD_SLEEP )
{
  unsigned long par1 = hb_parnl(1);
  QThread::sleep ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void usleep(unsigned long usecs)
*/
HB_FUNC_STATIC( QTHREAD_USLEEP )
{
  unsigned long par1 = hb_parnl(1);
  QThread::usleep ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void yieldCurrentThread()
*/
HB_FUNC_STATIC( QTHREAD_YIELDCURRENTTHREAD )
{
  QThread::yieldCurrentThread (  );
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP

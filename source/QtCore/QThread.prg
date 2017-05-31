/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTEVENTDISPATCHER
#endif

CLASS QThread INHERIT QObject

   DATA self_destruction INIT .F.

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

#include <Qt>

#ifndef __XHARBOUR__
#include <QThread>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QThread>
#endif

/*
QThread(QObject * parent = 0)
*/
HB_FUNC_STATIC( QTHREAD_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
    QThread * o = new QThread ( par1 );
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTHREAD_DELETE )
{
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
}

/*
QAbstractEventDispatcher * eventDispatcher() const
*/
HB_FUNC_STATIC( QTHREAD_EVENTDISPATCHER )
{
  QThread * obj = (QThread *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAbstractEventDispatcher * ptr = obj->eventDispatcher ();
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTEVENTDISPATCHER" );
  }
}

/*
void exit(int returnCode = 0)
*/
HB_FUNC_STATIC( QTHREAD_EXIT )
{
  QThread * obj = (QThread *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTNUM(1) )
    {
      obj->exit ( (int) ISNIL(1)? 0 : hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isFinished() const
*/
HB_FUNC_STATIC( QTHREAD_ISFINISHED )
{
  QThread * obj = (QThread *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isFinished () );
  }
}

/*
bool isRunning() const
*/
HB_FUNC_STATIC( QTHREAD_ISRUNNING )
{
  QThread * obj = (QThread *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isRunning () );
  }
}

/*
Priority priority() const
*/
HB_FUNC_STATIC( QTHREAD_PRIORITY )
{
  QThread * obj = (QThread *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->priority () );
  }
}

/*
void setEventDispatcher(QAbstractEventDispatcher * eventDispatcher)
*/
HB_FUNC_STATIC( QTHREAD_SETEVENTDISPATCHER )
{
  QThread * obj = (QThread *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQABSTRACTEVENTDISPATCHER(1) )
    {
      QAbstractEventDispatcher * par1 = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtr(1);
      obj->setEventDispatcher ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPriority(Priority priority)
*/
HB_FUNC_STATIC( QTHREAD_SETPRIORITY )
{
  QThread * obj = (QThread *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setPriority ( (QThread::Priority) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStackSize(uint stackSize)
*/
HB_FUNC_STATIC( QTHREAD_SETSTACKSIZE )
{
  QThread * obj = (QThread *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setStackSize ( (uint) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
uint stackSize() const
*/
HB_FUNC_STATIC( QTHREAD_STACKSIZE )
{
  QThread * obj = (QThread *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->stackSize () );
  }
}

/*
virtual bool event(QEvent * event)
*/
HB_FUNC_STATIC( QTHREAD_EVENT )
{
  QThread * obj = (QThread *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQEVENT(1) )
    {
      QEvent * par1 = (QEvent *) _qt5xhb_itemGetPtr(1);
      hb_retl( obj->event ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void quit()
*/
HB_FUNC_STATIC( QTHREAD_QUIT )
{
  QThread * obj = (QThread *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->quit ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void start(Priority priority = InheritPriority)
*/
HB_FUNC_STATIC( QTHREAD_START )
{
  QThread * obj = (QThread *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTNUM(1) )
    {
      int par1 = ISNIL(1)? (int) QThread::InheritPriority : hb_parni(1);
      obj->start ( (QThread::Priority) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void terminate()
*/
HB_FUNC_STATIC( QTHREAD_TERMINATE )
{
  QThread * obj = (QThread *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->terminate ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QThread * currentThread()
*/
HB_FUNC_STATIC( QTHREAD_CURRENTTHREAD )
{
  QThread * ptr = QThread::currentThread ();
  _qt5xhb_createReturnClass ( ptr, "QTHREAD" );
}

/*
static int idealThreadCount()
*/
HB_FUNC_STATIC( QTHREAD_IDEALTHREADCOUNT )
{
  hb_retni( QThread::idealThreadCount () );
}

/*
static void msleep(unsigned long msecs)
*/
HB_FUNC_STATIC( QTHREAD_MSLEEP )
{
  if( ISNUM(1) )
  {
    unsigned long par1 = hb_parnl(1);
    QThread::msleep ( par1 );
    hb_itemReturn( hb_stackSelfItem() );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static void sleep(unsigned long secs)
*/
HB_FUNC_STATIC( QTHREAD_SLEEP )
{
  if( ISNUM(1) )
  {
    unsigned long par1 = hb_parnl(1);
    QThread::sleep ( par1 );
    hb_itemReturn( hb_stackSelfItem() );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static void usleep(unsigned long usecs)
*/
HB_FUNC_STATIC( QTHREAD_USLEEP )
{
  if( ISNUM(1) )
  {
    unsigned long par1 = hb_parnl(1);
    QThread::usleep ( par1 );
    hb_itemReturn( hb_stackSelfItem() );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static void yieldCurrentThread()
*/
HB_FUNC_STATIC( QTHREAD_YIELDCURRENTTHREAD )
{
  QThread::yieldCurrentThread ();
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP

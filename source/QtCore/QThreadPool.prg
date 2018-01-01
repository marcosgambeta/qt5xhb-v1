/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QThreadPool INHERIT QObject

   METHOD new
   METHOD delete
   METHOD start
   METHOD tryStart
   METHOD expiryTimeout
   METHOD setExpiryTimeout
   METHOD maxThreadCount
   METHOD setMaxThreadCount
   METHOD activeThreadCount
   METHOD reserveThread
   METHOD releaseThread
   METHOD waitForDone
   METHOD clear
   METHOD globalInstance

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QThreadPool
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QThreadPool>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QThreadPool>
#endif

/*
QThreadPool(QObject *parent = 0)
*/
HB_FUNC_STATIC( QTHREADPOOL_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QThreadPool * o = new QThreadPool ( OPQOBJECT(1,0) );
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTHREADPOOL_DELETE )
{
  QThreadPool * obj = (QThreadPool *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void start(QRunnable *runnable, int priority = 0)
*/
HB_FUNC_STATIC( QTHREADPOOL_START )
{
  QThreadPool * obj = (QThreadPool *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQRUNNABLE(1) && ISOPTNUM(2) )
    {
      QRunnable * par1 = (QRunnable *) _qt5xhb_itemGetPtr(1);
      obj->start ( par1, OPINT(2,0) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool tryStart(QRunnable *runnable)
*/
HB_FUNC_STATIC( QTHREADPOOL_TRYSTART )
{
  QThreadPool * obj = (QThreadPool *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQRUNNABLE(1) )
    {
      QRunnable * par1 = (QRunnable *) _qt5xhb_itemGetPtr(1);
      RBOOL( obj->tryStart ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int expiryTimeout() const
*/
HB_FUNC_STATIC( QTHREADPOOL_EXPIRYTIMEOUT )
{
  QThreadPool * obj = (QThreadPool *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->expiryTimeout () );
  }
}

/*
void setExpiryTimeout(int expiryTimeout)
*/
HB_FUNC_STATIC( QTHREADPOOL_SETEXPIRYTIMEOUT )
{
  QThreadPool * obj = (QThreadPool *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setExpiryTimeout ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int maxThreadCount() const
*/
HB_FUNC_STATIC( QTHREADPOOL_MAXTHREADCOUNT )
{
  QThreadPool * obj = (QThreadPool *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->maxThreadCount () );
  }
}

/*
void setMaxThreadCount(int maxThreadCount)
*/
HB_FUNC_STATIC( QTHREADPOOL_SETMAXTHREADCOUNT )
{
  QThreadPool * obj = (QThreadPool *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setMaxThreadCount ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int activeThreadCount() const
*/
HB_FUNC_STATIC( QTHREADPOOL_ACTIVETHREADCOUNT )
{
  QThreadPool * obj = (QThreadPool *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->activeThreadCount () );
  }
}

/*
void reserveThread()
*/
HB_FUNC_STATIC( QTHREADPOOL_RESERVETHREAD )
{
  QThreadPool * obj = (QThreadPool *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->reserveThread ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void releaseThread()
*/
HB_FUNC_STATIC( QTHREADPOOL_RELEASETHREAD )
{
  QThreadPool * obj = (QThreadPool *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->releaseThread ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool waitForDone(int msecs = -1)
*/
HB_FUNC_STATIC( QTHREADPOOL_WAITFORDONE )
{
  QThreadPool * obj = (QThreadPool *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTNUM(1) )
    {
      RBOOL( obj->waitForDone ( OPINT(1,-1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void clear()
*/
HB_FUNC_STATIC( QTHREADPOOL_CLEAR )
{
  QThreadPool * obj = (QThreadPool *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->clear ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QThreadPool *globalInstance()
*/
HB_FUNC_STATIC( QTHREADPOOL_GLOBALINSTANCE )
{
  QThreadPool * ptr = QThreadPool::globalInstance ();
  _qt5xhb_createReturnClass ( ptr, "QTHREADPOOL" );
}

#pragma ENDDUMP

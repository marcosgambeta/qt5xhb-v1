/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QThreadPool INHERIT QObject

   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

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
    QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
    QThreadPool * o = new QThreadPool ( par1 );
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
      obj->start ( par1, (int) ISNIL(2)? 0 : hb_parni(2) );
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
      hb_retl( obj->tryStart ( par1 ) );
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
    hb_retni( obj->expiryTimeout () );
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
    hb_retni( obj->maxThreadCount () );
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
    hb_retni( obj->activeThreadCount () );
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
      hb_retl( obj->waitForDone ( (int) ISNIL(1)? -1 : hb_parni(1) ) );
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

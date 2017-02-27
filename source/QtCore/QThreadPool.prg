/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"



CLASS QThreadPool INHERIT QObject

   DATA class_id INIT Class_Id_QThreadPool
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QThreadPool>
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

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QThreadPool>
#endif
#endif

/*
QThreadPool(QObject *parent = 0)
*/
HB_FUNC_STATIC( QTHREADPOOL_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qtxhb_itemGetPtr(1);
  QThreadPool * o = new QThreadPool ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QThreadPool *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QTHREADPOOL_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
void start(QRunnable *runnable, int priority = 0)
*/
HB_FUNC_STATIC( QTHREADPOOL_START )
{
  QThreadPool * obj = (QThreadPool *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRunnable * par1 = (QRunnable *) _qtxhb_itemGetPtr(1);
    obj->start ( par1, (int) ISNIL(2)? 0 : hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool tryStart(QRunnable *runnable)
*/
HB_FUNC_STATIC( QTHREADPOOL_TRYSTART )
{
  QThreadPool * obj = (QThreadPool *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRunnable * par1 = (QRunnable *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->tryStart ( par1 ) );
  }
}


/*
int expiryTimeout() const
*/
HB_FUNC_STATIC( QTHREADPOOL_EXPIRYTIMEOUT )
{
  QThreadPool * obj = (QThreadPool *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->expiryTimeout (  ) );
  }
}


/*
void setExpiryTimeout(int expiryTimeout)
*/
HB_FUNC_STATIC( QTHREADPOOL_SETEXPIRYTIMEOUT )
{
  QThreadPool * obj = (QThreadPool *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setExpiryTimeout ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int maxThreadCount() const
*/
HB_FUNC_STATIC( QTHREADPOOL_MAXTHREADCOUNT )
{
  QThreadPool * obj = (QThreadPool *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->maxThreadCount (  ) );
  }
}


/*
void setMaxThreadCount(int maxThreadCount)
*/
HB_FUNC_STATIC( QTHREADPOOL_SETMAXTHREADCOUNT )
{
  QThreadPool * obj = (QThreadPool *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMaxThreadCount ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int activeThreadCount() const
*/
HB_FUNC_STATIC( QTHREADPOOL_ACTIVETHREADCOUNT )
{
  QThreadPool * obj = (QThreadPool *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->activeThreadCount (  ) );
  }
}


/*
void reserveThread()
*/
HB_FUNC_STATIC( QTHREADPOOL_RESERVETHREAD )
{
  QThreadPool * obj = (QThreadPool *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->reserveThread (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void releaseThread()
*/
HB_FUNC_STATIC( QTHREADPOOL_RELEASETHREAD )
{
  QThreadPool * obj = (QThreadPool *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->releaseThread (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool waitForDone(int msecs = -1)
*/
HB_FUNC_STATIC( QTHREADPOOL_WAITFORDONE )
{
  QThreadPool * obj = (QThreadPool *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->waitForDone ( (int) ISNIL(1)? -1 : hb_parni(1) ) );
  }
}


/*
void clear()
*/
HB_FUNC_STATIC( QTHREADPOOL_CLEAR )
{
  QThreadPool * obj = (QThreadPool *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static QThreadPool *globalInstance()
*/
HB_FUNC_STATIC( QTHREADPOOL_GLOBALINSTANCE )
{
  QThreadPool * ptr = QThreadPool::globalInstance (  );
  _qt5xhb_createReturnClass ( ptr, "QTHREADPOOL" );
}



#pragma ENDDUMP

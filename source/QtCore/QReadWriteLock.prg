/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

CLASS QReadWriteLock

   DATA pointer
   DATA class_id INIT Class_Id_QReadWriteLock
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD lockForRead
   METHOD tryLockForRead
   METHOD lockForWrite
   METHOD tryLockForWrite
   METHOD unlock

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QReadWriteLock
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QReadWriteLock>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QReadWriteLock>
#endif

/*
QReadWriteLock(RecursionMode recursionMode = NonRecursive)
*/
HB_FUNC_STATIC( QREADWRITELOCK_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    int par1 = ISNIL(1)? (int) QReadWriteLock::NonRecursive : hb_parni(1);
    QReadWriteLock * o = new QReadWriteLock (  (QReadWriteLock::RecursionMode) par1 );
    _qt5xhb_storePointerAndFlag( o, true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QREADWRITELOCK_DELETE )
{
  QReadWriteLock * obj = (QReadWriteLock *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void lockForRead()
*/
HB_FUNC_STATIC( QREADWRITELOCK_LOCKFORREAD )
{
  QReadWriteLock * obj = (QReadWriteLock *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->lockForRead (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool tryLockForRead()
*/
void QReadWriteLock_tryLockForRead1 ()
{
  QReadWriteLock * obj = (QReadWriteLock *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->tryLockForRead (  ) );
  }
}

/*
bool tryLockForRead(int timeout)
*/
void QReadWriteLock_tryLockForRead2 ()
{
  QReadWriteLock * obj = (QReadWriteLock *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->tryLockForRead ( (int) hb_parni(1) ) );
  }
}

//[1]bool tryLockForRead()
//[2]bool tryLockForRead(int timeout)

HB_FUNC_STATIC( QREADWRITELOCK_TRYLOCKFORREAD )
{
  if( ISNUMPAR(0) )
  {
    QReadWriteLock_tryLockForRead1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QReadWriteLock_tryLockForRead2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void lockForWrite()
*/
HB_FUNC_STATIC( QREADWRITELOCK_LOCKFORWRITE )
{
  QReadWriteLock * obj = (QReadWriteLock *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->lockForWrite (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool tryLockForWrite()
*/
void QReadWriteLock_tryLockForWrite1 ()
{
  QReadWriteLock * obj = (QReadWriteLock *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->tryLockForWrite (  ) );
  }
}

/*
bool tryLockForWrite(int timeout)
*/
void QReadWriteLock_tryLockForWrite2 ()
{
  QReadWriteLock * obj = (QReadWriteLock *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->tryLockForWrite ( (int) hb_parni(1) ) );
  }
}

//[1]bool tryLockForWrite()
//[2]bool tryLockForWrite(int timeout)

HB_FUNC_STATIC( QREADWRITELOCK_TRYLOCKFORWRITE )
{
  if( ISNUMPAR(0) )
  {
    QReadWriteLock_tryLockForWrite1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QReadWriteLock_tryLockForWrite2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void unlock()
*/
HB_FUNC_STATIC( QREADWRITELOCK_UNLOCK )
{
  QReadWriteLock * obj = (QReadWriteLock *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->unlock (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QREADWRITELOCK_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QREADWRITELOCK_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QREADWRITELOCK_NEWFROM );
}

HB_FUNC_STATIC( QREADWRITELOCK_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QREADWRITELOCK_NEWFROM );
}

HB_FUNC_STATIC( QREADWRITELOCK_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QREADWRITELOCK_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP

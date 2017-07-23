$header

#include "hbclass.ch"

CLASS QReadWriteLock

   DATA pointer
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

$destructor

#pragma BEGINDUMP

$includes

/*
QReadWriteLock(RecursionMode recursionMode = NonRecursive)
*/
$constructor=|new|QReadWriteLock::RecursionMode=QReadWriteLock::NonRecursive

$deleteMethod

/*
void lockForRead()
*/
$method=|void|lockForRead|

/*
bool tryLockForRead()
*/
$internalMethod=|bool|tryLockForRead,tryLockForRead1|

/*
bool tryLockForRead(int timeout)
*/
$internalMethod=|bool|tryLockForRead,tryLockForRead2|int

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
$method=|void|lockForWrite|

/*
bool tryLockForWrite()
*/
$internalMethod=|bool|tryLockForWrite,tryLockForWrite1|

/*
bool tryLockForWrite(int timeout)
*/
$internalMethod=|bool|tryLockForWrite,tryLockForWrite2|int

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
$method=|void|unlock|

$extraMethods

#pragma ENDDUMP

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QREADWRITELOCK
#endif

CLASS QWriteLocker

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD readWriteLock
   METHOD relock
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
QWriteLocker(QReadWriteLock * lock)
*/
HB_FUNC_STATIC( QWRITELOCKER_NEW )
{
  if( ISNUMPAR(1) && ISQREADWRITELOCK(1) )
  {
    QReadWriteLock * par1 = (QReadWriteLock *) _qt5xhb_itemGetPtr(1);
    QWriteLocker * o = new QWriteLocker ( par1 );
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QReadWriteLock * readWriteLock() const
*/
HB_FUNC_STATIC( QWRITELOCKER_READWRITELOCK )
{
  QWriteLocker * obj = (QWriteLocker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QReadWriteLock * ptr = obj->readWriteLock ();
    _qt5xhb_createReturnClass ( ptr, "QREADWRITELOCK" );
  }
}

/*
void relock()
*/
HB_FUNC_STATIC( QWRITELOCKER_RELOCK )
{
  QWriteLocker * obj = (QWriteLocker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->relock ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void unlock()
*/
HB_FUNC_STATIC( QWRITELOCKER_UNLOCK )
{
  QWriteLocker * obj = (QWriteLocker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->unlock ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP

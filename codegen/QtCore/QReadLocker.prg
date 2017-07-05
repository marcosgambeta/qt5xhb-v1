$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QREADWRITELOCK
#endif

CLASS QReadLocker

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD unlock
   METHOD relock
   METHOD readWriteLock

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
QReadLocker(QReadWriteLock *readWriteLock)
*/
HB_FUNC_STATIC( QREADLOCKER_NEW )
{
  if( ISNUMPAR(1) && ISQREADWRITELOCK(1) )
  {
    QReadWriteLock * par1 = (QReadWriteLock *) _qt5xhb_itemGetPtr(1);
    QReadLocker * o = new QReadLocker ( par1 );
    _qt5xhb_storePointerAndFlag( o, true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void unlock()
*/
HB_FUNC_STATIC( QREADLOCKER_UNLOCK )
{
  QReadLocker * obj = (QReadLocker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->unlock ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void relock()
*/
HB_FUNC_STATIC( QREADLOCKER_RELOCK )
{
  QReadLocker * obj = (QReadLocker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->relock ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QReadWriteLock *readWriteLock() const
*/
HB_FUNC_STATIC( QREADLOCKER_READWRITELOCK )
{
  QReadLocker * obj = (QReadLocker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QReadWriteLock * ptr = obj->readWriteLock ();
    _qt5xhb_createReturnClass ( ptr, "QREADWRITELOCK" );
  }
}

$extraMethods

#pragma ENDDUMP

$header

#include "hbclass.ch"

CLASS QCameraLocksControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD lockStatus
   METHOD searchAndLock
   METHOD supportedLocks
   METHOD unlock

   METHOD onLockStatusChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual QCamera::LockStatus lockStatus(QCamera::LockType lock) const = 0
*/
HB_FUNC_STATIC( QCAMERALOCKSCONTROL_LOCKSTATUS )
{
  QCameraLocksControl * obj = (QCameraLocksControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->lockStatus ( (QCamera::LockType) hb_parni(1) ) );
  }
}


/*
virtual void searchAndLock(QCamera::LockTypes locks) = 0
*/
HB_FUNC_STATIC( QCAMERALOCKSCONTROL_SEARCHANDLOCK )
{
  QCameraLocksControl * obj = (QCameraLocksControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->searchAndLock ( (QCamera::LockTypes) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QCamera::LockTypes supportedLocks() const = 0
*/
HB_FUNC_STATIC( QCAMERALOCKSCONTROL_SUPPORTEDLOCKS )
{
  QCameraLocksControl * obj = (QCameraLocksControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->supportedLocks () );
  }
}


/*
virtual void unlock(QCamera::LockTypes locks) = 0
*/
HB_FUNC_STATIC( QCAMERALOCKSCONTROL_UNLOCK )
{
  QCameraLocksControl * obj = (QCameraLocksControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->unlock ( (QCamera::LockTypes) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP

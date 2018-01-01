/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QCameraLocksControl INHERIT QMediaControl

   METHOD delete
   METHOD lockStatus
   METHOD searchAndLock
   METHOD supportedLocks
   METHOD unlock

   METHOD onLockStatusChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCameraLocksControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QCameraLocksControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QCameraLocksControl>
#endif

HB_FUNC_STATIC( QCAMERALOCKSCONTROL_DELETE )
{
  QCameraLocksControl * obj = (QCameraLocksControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
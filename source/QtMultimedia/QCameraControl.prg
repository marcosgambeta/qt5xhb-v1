/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QCameraControl INHERIT QMediaObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD canChangeProperty
   METHOD captureMode
   METHOD isCaptureModeSupported
   METHOD setCaptureMode
   METHOD setState
   METHOD state
   METHOD status

   METHOD onCaptureModeChanged
   METHOD onError
   METHOD onStateChanged
   METHOD onStatusChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCameraControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QCameraControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QCameraControl>
#endif

HB_FUNC_STATIC( QCAMERACONTROL_DELETE )
{
  QCameraControl * obj = (QCameraControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual bool canChangeProperty(PropertyChangeType changeType, QCamera::Status status) const = 0
*/
HB_FUNC_STATIC( QCAMERACONTROL_CANCHANGEPROPERTY )
{
  QCameraControl * obj = (QCameraControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->canChangeProperty ( (QCameraControl::PropertyChangeType) hb_parni(1), (QCamera::Status) hb_parni(2) ) );
  }
}


/*
virtual QCamera::CaptureModes captureMode() const = 0
*/
HB_FUNC_STATIC( QCAMERACONTROL_CAPTUREMODE )
{
  QCameraControl * obj = (QCameraControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->captureMode () );
  }
}


/*
virtual bool isCaptureModeSupported(QCamera::CaptureModes mode) const = 0
*/
HB_FUNC_STATIC( QCAMERACONTROL_ISCAPTUREMODESUPPORTED )
{
  QCameraControl * obj = (QCameraControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->isCaptureModeSupported ( (QCamera::CaptureModes) par1 ) );
  }
}


/*
virtual void setCaptureMode(QCamera::CaptureModes mode) = 0
*/
HB_FUNC_STATIC( QCAMERACONTROL_SETCAPTUREMODE )
{
  QCameraControl * obj = (QCameraControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setCaptureMode ( (QCamera::CaptureModes) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setState(QCamera::State state) = 0
*/
HB_FUNC_STATIC( QCAMERACONTROL_SETSTATE )
{
  QCameraControl * obj = (QCameraControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setState ( (QCamera::State) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QCamera::State state() const = 0
*/
HB_FUNC_STATIC( QCAMERACONTROL_STATE )
{
  QCameraControl * obj = (QCameraControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->state () );
  }
}


/*
virtual QCamera::Status status() const = 0
*/
HB_FUNC_STATIC( QCAMERACONTROL_STATUS )
{
  QCameraControl * obj = (QCameraControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->status () );
  }
}




#pragma ENDDUMP

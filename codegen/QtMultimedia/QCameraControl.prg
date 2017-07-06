$header

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

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual bool canChangeProperty(PropertyChangeType changeType, QCamera::Status status) const = 0
*/
HB_FUNC_STATIC( QCAMERACONTROL_CANCHANGEPROPERTY )
{
  QCameraControl * obj = (QCameraControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->canChangeProperty ( (QCameraControl::PropertyChangeType) hb_parni(1), (QCamera::Status) hb_parni(2) ) );
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
    RBOOL( obj->isCaptureModeSupported ( (QCamera::CaptureModes) par1 ) );
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
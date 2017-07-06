$header

#include "hbclass.ch"

CLASS QCameraImageCaptureControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD cancelCapture
   METHOD capture
   METHOD driveMode
   METHOD isReadyForCapture
   METHOD setDriveMode

   METHOD onError
   METHOD onImageAvailable
   METHOD onImageCaptured
   METHOD onImageExposed
   METHOD onImageMetadataAvailable
   METHOD onImageSaved
   METHOD onReadyForCaptureChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual void cancelCapture() = 0
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURECONTROL_CANCELCAPTURE )
{
  QCameraImageCaptureControl * obj = (QCameraImageCaptureControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->cancelCapture ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual int capture(const QString & fileName) = 0
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURECONTROL_CAPTURE )
{
  QCameraImageCaptureControl * obj = (QCameraImageCaptureControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->capture ( PQSTRING(1) ) );
  }
}


/*
virtual QCameraImageCapture::DriveMode driveMode() const = 0
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURECONTROL_DRIVEMODE )
{
  QCameraImageCaptureControl * obj = (QCameraImageCaptureControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->driveMode () );
  }
}


/*
virtual bool isReadyForCapture() const = 0
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURECONTROL_ISREADYFORCAPTURE )
{
  QCameraImageCaptureControl * obj = (QCameraImageCaptureControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isReadyForCapture () );
  }
}


/*
virtual void setDriveMode(QCameraImageCapture::DriveMode mode) = 0
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURECONTROL_SETDRIVEMODE )
{
  QCameraImageCaptureControl * obj = (QCameraImageCaptureControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDriveMode ( (QCameraImageCapture::DriveMode) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP

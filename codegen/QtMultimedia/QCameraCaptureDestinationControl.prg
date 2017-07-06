$header

#include "hbclass.ch"

CLASS QCameraCaptureDestinationControl INHERIT QMediaObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD captureDestination
   METHOD isCaptureDestinationSupported
   METHOD setCaptureDestination

   METHOD onCaptureDestinationChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual QCameraImageCapture::CaptureDestinations captureDestination() const = 0
*/
HB_FUNC_STATIC( QCAMERACAPTUREDESTINATIONCONTROL_CAPTUREDESTINATION )
{
  QCameraCaptureDestinationControl * obj = (QCameraCaptureDestinationControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->captureDestination () );
  }
}


/*
virtual bool isCaptureDestinationSupported(QCameraImageCapture::CaptureDestinations destination) const = 0
*/
HB_FUNC_STATIC( QCAMERACAPTUREDESTINATIONCONTROL_ISCAPTUREDESTINATIONSUPPORTED )
{
  QCameraCaptureDestinationControl * obj = (QCameraCaptureDestinationControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    RBOOL( obj->isCaptureDestinationSupported ( (QCameraImageCapture::CaptureDestinations) par1 ) );
  }
}


/*
virtual void setCaptureDestination(QCameraImageCapture::CaptureDestinations destination) = 0
*/
HB_FUNC_STATIC( QCAMERACAPTUREDESTINATIONCONTROL_SETCAPTUREDESTINATION )
{
  QCameraCaptureDestinationControl * obj = (QCameraCaptureDestinationControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setCaptureDestination ( (QCameraImageCapture::CaptureDestinations) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP

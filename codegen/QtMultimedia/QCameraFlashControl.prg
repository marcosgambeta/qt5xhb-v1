$header

#include "hbclass.ch"

CLASS QCameraFlashControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD flashMode
   METHOD isFlashModeSupported
   METHOD isFlashReady
   METHOD setFlashMode

   METHOD onFlashReady

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual QCameraExposure::FlashModes flashMode() const = 0
*/
HB_FUNC_STATIC( QCAMERAFLASHCONTROL_FLASHMODE )
{
  QCameraFlashControl * obj = (QCameraFlashControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->flashMode () );
  }
}


/*
virtual bool isFlashModeSupported(QCameraExposure::FlashModes mode) const = 0
*/
HB_FUNC_STATIC( QCAMERAFLASHCONTROL_ISFLASHMODESUPPORTED )
{
  QCameraFlashControl * obj = (QCameraFlashControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    RBOOL( obj->isFlashModeSupported ( (QCameraExposure::FlashModes) par1 ) );
  }
}


/*
virtual bool isFlashReady() const = 0
*/
HB_FUNC_STATIC( QCAMERAFLASHCONTROL_ISFLASHREADY )
{
  QCameraFlashControl * obj = (QCameraFlashControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isFlashReady () );
  }
}


/*
virtual void setFlashMode(QCameraExposure::FlashModes mode) = 0
*/
HB_FUNC_STATIC( QCAMERAFLASHCONTROL_SETFLASHMODE )
{
  QCameraFlashControl * obj = (QCameraFlashControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFlashMode ( (QCameraExposure::FlashModes) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP

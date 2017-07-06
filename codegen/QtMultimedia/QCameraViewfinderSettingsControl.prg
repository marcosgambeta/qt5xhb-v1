$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QCameraViewfinderSettingsControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD isViewfinderParameterSupported
   METHOD setViewfinderParameter
   METHOD viewfinderParameter

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual bool isViewfinderParameterSupported(ViewfinderParameter parameter) const = 0
*/
HB_FUNC_STATIC( QCAMERAVIEWFINDERSETTINGSCONTROL_ISVIEWFINDERPARAMETERSUPPORTED )
{
  QCameraViewfinderSettingsControl * obj = (QCameraViewfinderSettingsControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isViewfinderParameterSupported ( (QCameraViewfinderSettingsControl::ViewfinderParameter) hb_parni(1) ) );
  }
}


/*
virtual void setViewfinderParameter(ViewfinderParameter parameter, const QVariant & value) = 0
*/
HB_FUNC_STATIC( QCAMERAVIEWFINDERSETTINGSCONTROL_SETVIEWFINDERPARAMETER )
{
  QCameraViewfinderSettingsControl * obj = (QCameraViewfinderSettingsControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setViewfinderParameter ( (QCameraViewfinderSettingsControl::ViewfinderParameter) hb_parni(1), *PQVARIANT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QVariant viewfinderParameter(ViewfinderParameter parameter) const = 0
*/
HB_FUNC_STATIC( QCAMERAVIEWFINDERSETTINGSCONTROL_VIEWFINDERPARAMETER )
{
  QCameraViewfinderSettingsControl * obj = (QCameraViewfinderSettingsControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->viewfinderParameter ( (QCameraViewfinderSettingsControl::ViewfinderParameter) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}



#pragma ENDDUMP

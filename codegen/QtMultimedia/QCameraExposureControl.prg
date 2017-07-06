$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QCameraExposureControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD actualValue
   METHOD isParameterSupported
   METHOD requestedValue
   METHOD setValue
   METHOD supportedParameterRange

   METHOD onActualValueChanged
   METHOD onParameterRangeChanged
   METHOD onRequestedValueChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual QVariant actualValue(ExposureParameter parameter) const = 0
*/
HB_FUNC_STATIC( QCAMERAEXPOSURECONTROL_ACTUALVALUE )
{
  QCameraExposureControl * obj = (QCameraExposureControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->actualValue ( (QCameraExposureControl::ExposureParameter) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
virtual bool isParameterSupported(ExposureParameter parameter) const = 0
*/
HB_FUNC_STATIC( QCAMERAEXPOSURECONTROL_ISPARAMETERSUPPORTED )
{
  QCameraExposureControl * obj = (QCameraExposureControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isParameterSupported ( (QCameraExposureControl::ExposureParameter) hb_parni(1) ) );
  }
}


/*
virtual QVariant requestedValue(ExposureParameter parameter) const = 0
*/
HB_FUNC_STATIC( QCAMERAEXPOSURECONTROL_REQUESTEDVALUE )
{
  QCameraExposureControl * obj = (QCameraExposureControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->requestedValue ( (QCameraExposureControl::ExposureParameter) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
virtual bool setValue(ExposureParameter parameter, const QVariant & value) = 0
*/
HB_FUNC_STATIC( QCAMERAEXPOSURECONTROL_SETVALUE )
{
  QCameraExposureControl * obj = (QCameraExposureControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->setValue ( (QCameraExposureControl::ExposureParameter) hb_parni(1), *PQVARIANT(2) ) );
  }
}


/*
virtual QVariantList supportedParameterRange(ExposureParameter parameter, bool * continuous) const = 0
*/
HB_FUNC_STATIC( QCAMERAEXPOSURECONTROL_SUPPORTEDPARAMETERRANGE )
{
  QCameraExposureControl * obj = (QCameraExposureControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    bool par2;
    _qt5xhb_convert_qvariantlist_to_array( obj->supportedParameterRange ( (QCameraExposureControl::ExposureParameter) hb_parni(1), &par2 ) );
    hb_storl( par2, 2 );
  }
}




#pragma ENDDUMP

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QCameraImageProcessingControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD isParameterSupported
   METHOD isParameterValueSupported
   METHOD parameter
   METHOD setParameter

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual bool isParameterSupported(ProcessingParameter parameter) const = 0
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSINGCONTROL_ISPARAMETERSUPPORTED )
{
  QCameraImageProcessingControl * obj = (QCameraImageProcessingControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isParameterSupported ( (QCameraImageProcessingControl::ProcessingParameter) hb_parni(1) ) );
  }
}


/*
virtual bool isParameterValueSupported(ProcessingParameter parameter, const QVariant & value) const = 0
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSINGCONTROL_ISPARAMETERVALUESUPPORTED )
{
  QCameraImageProcessingControl * obj = (QCameraImageProcessingControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isParameterValueSupported ( (QCameraImageProcessingControl::ProcessingParameter) hb_parni(1), *PQVARIANT(2) ) );
  }
}


/*
virtual QVariant parameter(ProcessingParameter parameter) const = 0
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSINGCONTROL_PARAMETER )
{
  QCameraImageProcessingControl * obj = (QCameraImageProcessingControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->parameter ( (QCameraImageProcessingControl::ProcessingParameter) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
virtual void setParameter(ProcessingParameter parameter, const QVariant & value) = 0
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSINGCONTROL_SETPARAMETER )
{
  QCameraImageProcessingControl * obj = (QCameraImageProcessingControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setParameter ( (QCameraImageProcessingControl::ProcessingParameter) hb_parni(1), *PQVARIANT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP

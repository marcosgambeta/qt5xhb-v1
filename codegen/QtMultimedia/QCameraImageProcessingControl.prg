$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QCameraImageProcessingControl INHERIT QMediaControl

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

$prototype=virtual bool isParameterSupported(ProcessingParameter parameter) const = 0
$method=|bool|isParameterSupported|QCameraImageProcessingControl::ProcessingParameter

$prototype=virtual bool isParameterValueSupported(ProcessingParameter parameter, const QVariant & value) const = 0
$method=|bool|isParameterValueSupported|QCameraImageProcessingControl::ProcessingParameter,const QVariant &

$prototype=virtual QVariant parameter(ProcessingParameter parameter) const = 0
$method=|QVariant|parameter|QCameraImageProcessingControl::ProcessingParameter

$prototype=virtual void setParameter(ProcessingParameter parameter, const QVariant & value) = 0
$method=|void|setParameter|QCameraImageProcessingControl::ProcessingParameter,const QVariant &

#pragma ENDDUMP

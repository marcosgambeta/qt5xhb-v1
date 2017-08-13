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
$method=|bool|isParameterSupported|QCameraImageProcessingControl::ProcessingParameter

/*
virtual bool isParameterValueSupported(ProcessingParameter parameter, const QVariant & value) const = 0
*/
$method=|bool|isParameterValueSupported|QCameraImageProcessingControl::ProcessingParameter,const QVariant &

/*
virtual QVariant parameter(ProcessingParameter parameter) const = 0
*/
$method=|QVariant|parameter|QCameraImageProcessingControl::ProcessingParameter

/*
virtual void setParameter(ProcessingParameter parameter, const QVariant & value) = 0
*/
$method=|void|setParameter|QCameraImageProcessingControl::ProcessingParameter,const QVariant &

#pragma ENDDUMP

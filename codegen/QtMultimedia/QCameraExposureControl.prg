$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QCameraExposureControl INHERIT QMediaControl

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

$prototype=virtual QVariant actualValue(ExposureParameter parameter) const = 0
$method=|QVariant|actualValue|QCameraExposureControl::ExposureParameter

$prototype=virtual bool isParameterSupported(ExposureParameter parameter) const = 0
$method=|bool|isParameterSupported|QCameraExposureControl::ExposureParameter

$prototype=virtual QVariant requestedValue(ExposureParameter parameter) const = 0
$method=|QVariant|requestedValue|QCameraExposureControl::ExposureParameter

$prototype=virtual bool setValue(ExposureParameter parameter, const QVariant & value) = 0
$method=|bool|setValue|QCameraExposureControl::ExposureParameter,const QVariant &

$prototype=virtual QVariantList supportedParameterRange(ExposureParameter parameter, bool * continuous) const = 0
$method=|QVariantList|supportedParameterRange|QCameraExposureControl::ExposureParameter,bool *

#pragma ENDDUMP

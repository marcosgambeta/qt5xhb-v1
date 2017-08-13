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
$method=|bool|isViewfinderParameterSupported|QCameraViewfinderSettingsControl::ViewfinderParameter

/*
virtual void setViewfinderParameter(ViewfinderParameter parameter, const QVariant & value) = 0
*/
$method=|void|setViewfinderParameter|QCameraViewfinderSettingsControl::ViewfinderParameter,const QVariant &

/*
virtual QVariant viewfinderParameter(ViewfinderParameter parameter) const = 0
*/
$method=|QVariant|viewfinderParameter|QCameraViewfinderSettingsControl::ViewfinderParameter

#pragma ENDDUMP

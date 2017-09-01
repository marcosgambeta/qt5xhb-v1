$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QCameraExposure INHERIT QObject

   METHOD aperture
   METHOD exposureCompensation
   METHOD exposureMode
   METHOD flashMode
   METHOD isAvailable
   METHOD isExposureModeSupported
   METHOD isFlashModeSupported
   METHOD isFlashReady
   METHOD isMeteringModeSupported
   METHOD isoSensitivity
   METHOD meteringMode
   METHOD requestedAperture
   METHOD requestedIsoSensitivity
   METHOD requestedShutterSpeed
   METHOD setSpotMeteringPoint
   METHOD shutterSpeed
   METHOD spotMeteringPoint
   METHOD supportedApertures
   METHOD supportedIsoSensitivities
   METHOD supportedShutterSpeeds
   METHOD setAutoAperture
   METHOD setAutoIsoSensitivity
   METHOD setAutoShutterSpeed
   METHOD setExposureCompensation
   METHOD setExposureMode
   METHOD setFlashMode
   METHOD setManualAperture
   METHOD setManualIsoSensitivity
   METHOD setManualShutterSpeed
   METHOD setMeteringMode

   METHOD onApertureChanged
   METHOD onApertureRangeChanged
   METHOD onExposureCompensationChanged
   METHOD onFlashReady
   METHOD onIsoSensitivityChanged
   METHOD onShutterSpeedChanged
   METHOD onShutterSpeedRangeChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QPointF>

/*
qreal aperture() const
*/
$method=|qreal|aperture|

/*
qreal exposureCompensation() const
*/
$method=|qreal|exposureCompensation|

/*
ExposureMode exposureMode() const
*/
$method=|QCameraExposure::ExposureMode|exposureMode|

/*
FlashModes flashMode() const
*/
$method=|QCameraExposure::FlashModes|flashMode|

/*
bool isAvailable() const
*/
$method=|bool|isAvailable|

/*
bool isExposureModeSupported(ExposureMode mode) const
*/
$method=|bool|isExposureModeSupported|QCameraExposure::ExposureMode

/*
bool isFlashModeSupported(FlashModes mode) const
*/
$method=|bool|isFlashModeSupported|QCameraExposure::FlashModes

/*
bool isFlashReady() const
*/
$method=|bool|isFlashReady|

/*
bool isMeteringModeSupported(MeteringMode mode) const
*/
$method=|bool|isMeteringModeSupported|QCameraExposure::MeteringMode

/*
int isoSensitivity() const
*/
$method=|int|isoSensitivity|

/*
MeteringMode meteringMode() const
*/
$method=|QCameraExposure::MeteringMode|meteringMode|

/*
qreal requestedAperture() const
*/
$method=|qreal|requestedAperture|

/*
int requestedIsoSensitivity() const
*/
$method=|int|requestedIsoSensitivity|

/*
qreal requestedShutterSpeed() const
*/
$method=|qreal|requestedShutterSpeed|

/*
void setSpotMeteringPoint(const QPointF & point)
*/
$method=|void|setSpotMeteringPoint|const QPointF &

/*
qreal shutterSpeed() const
*/
$method=|qreal|shutterSpeed|

/*
QPointF spotMeteringPoint() const
*/
$method=|QPointF|spotMeteringPoint|

/*
QList<qreal> supportedApertures(bool * continuous = 0) const
*/
$method=|QList<qreal>|supportedApertures|bool *=0

/*
QList<int> supportedIsoSensitivities(bool * continuous = 0) const
*/
$method=|QList<int>|supportedIsoSensitivities|bool *=0

/*
QList<qreal> supportedShutterSpeeds(bool * continuous = 0) const
*/
$method=|QList<qreal>|supportedShutterSpeeds|bool *=0

/*
void setAutoAperture()
*/
$method=|void|setAutoAperture|

/*
void setAutoIsoSensitivity()
*/
$method=|void|setAutoIsoSensitivity|

/*
void setAutoShutterSpeed()
*/
$method=|void|setAutoShutterSpeed|

/*
void setExposureCompensation(qreal ev)
*/
$method=|void|setExposureCompensation|qreal

/*
void setExposureMode(ExposureMode mode)
*/
$method=|void|setExposureMode|QCameraExposure::ExposureMode

/*
void setFlashMode(FlashModes mode)
*/
$method=|void|setFlashMode|QCameraExposure::FlashModes

/*
void setManualAperture(qreal aperture)
*/
$method=|void|setManualAperture|qreal

/*
void setManualIsoSensitivity(int iso)
*/
$method=|void|setManualIsoSensitivity|int

/*
void setManualShutterSpeed(qreal seconds)
*/
$method=|void|setManualShutterSpeed|qreal

/*
void setMeteringMode(MeteringMode mode)
*/
$method=|void|setMeteringMode|QCameraExposure::MeteringMode

#pragma ENDDUMP

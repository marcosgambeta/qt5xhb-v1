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

$prototype=qreal aperture() const
$method=|qreal|aperture|

$prototype=qreal exposureCompensation() const
$method=|qreal|exposureCompensation|

$prototype=ExposureMode exposureMode() const
$method=|QCameraExposure::ExposureMode|exposureMode|

$prototype=FlashModes flashMode() const
$method=|QCameraExposure::FlashModes|flashMode|

$prototype=bool isAvailable() const
$method=|bool|isAvailable|

$prototype=bool isExposureModeSupported(ExposureMode mode) const
$method=|bool|isExposureModeSupported|QCameraExposure::ExposureMode

$prototype=bool isFlashModeSupported(FlashModes mode) const
$method=|bool|isFlashModeSupported|QCameraExposure::FlashModes

$prototype=bool isFlashReady() const
$method=|bool|isFlashReady|

$prototype=bool isMeteringModeSupported(MeteringMode mode) const
$method=|bool|isMeteringModeSupported|QCameraExposure::MeteringMode

$prototype=int isoSensitivity() const
$method=|int|isoSensitivity|

$prototype=MeteringMode meteringMode() const
$method=|QCameraExposure::MeteringMode|meteringMode|

$prototype=qreal requestedAperture() const
$method=|qreal|requestedAperture|

$prototype=int requestedIsoSensitivity() const
$method=|int|requestedIsoSensitivity|

$prototype=qreal requestedShutterSpeed() const
$method=|qreal|requestedShutterSpeed|

$prototype=void setSpotMeteringPoint(const QPointF & point)
$method=|void|setSpotMeteringPoint|const QPointF &

$prototype=qreal shutterSpeed() const
$method=|qreal|shutterSpeed|

$prototype=QPointF spotMeteringPoint() const
$method=|QPointF|spotMeteringPoint|

$prototype=QList<qreal> supportedApertures(bool * continuous = 0) const
$method=|QList<qreal>|supportedApertures|bool *=0

$prototype=QList<int> supportedIsoSensitivities(bool * continuous = 0) const
$method=|QList<int>|supportedIsoSensitivities|bool *=0

$prototype=QList<qreal> supportedShutterSpeeds(bool * continuous = 0) const
$method=|QList<qreal>|supportedShutterSpeeds|bool *=0

$prototype=void setAutoAperture()
$method=|void|setAutoAperture|

$prototype=void setAutoIsoSensitivity()
$method=|void|setAutoIsoSensitivity|

$prototype=void setAutoShutterSpeed()
$method=|void|setAutoShutterSpeed|

$prototype=void setExposureCompensation(qreal ev)
$method=|void|setExposureCompensation|qreal

$prototype=void setExposureMode(ExposureMode mode)
$method=|void|setExposureMode|QCameraExposure::ExposureMode

$prototype=void setFlashMode(FlashModes mode)
$method=|void|setFlashMode|QCameraExposure::FlashModes

$prototype=void setManualAperture(qreal aperture)
$method=|void|setManualAperture|qreal

$prototype=void setManualIsoSensitivity(int iso)
$method=|void|setManualIsoSensitivity|int

$prototype=void setManualShutterSpeed(qreal seconds)
$method=|void|setManualShutterSpeed|qreal

$prototype=void setMeteringMode(MeteringMode mode)
$method=|void|setMeteringMode|QCameraExposure::MeteringMode

#pragma ENDDUMP

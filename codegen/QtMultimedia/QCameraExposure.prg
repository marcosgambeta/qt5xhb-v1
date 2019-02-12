%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QPointF>

$prototype=explicit QCameraExposure(QCamera *parent = Q_NULLPTR) [private]

$prototype=virtual ~QCameraExposure() [private]

%%
%% Q_PROPERTY(qreal aperture READ aperture NOTIFY apertureChanged)
%%

$prototype=qreal aperture() const
$method=|qreal|aperture|

%%
%% Q_PROPERTY(qreal shutterSpeed READ shutterSpeed NOTIFY shutterSpeedChanged)
%%

$prototype=qreal shutterSpeed() const
$method=|qreal|shutterSpeed|

%%
%% Q_PROPERTY(int isoSensitivity READ isoSensitivity NOTIFY isoSensitivityChanged)
%%

$prototype=int isoSensitivity() const
$method=|int|isoSensitivity|

%%
%% Q_PROPERTY(qreal exposureCompensation READ exposureCompensation WRITE setExposureCompensation NOTIFY exposureCompensationChanged)
%%

$prototype=qreal exposureCompensation() const
$method=|qreal|exposureCompensation|

$prototype=void setExposureCompensation(qreal ev)
$slotMethod=|void|setExposureCompensation|qreal

%%
%% Q_PROPERTY(bool flashReady READ isFlashReady NOTIFY flashReady)
%%

$prototype=bool isFlashReady() const
$method=|bool|isFlashReady|

%%
%% Q_PROPERTY(QCameraExposure::FlashModes flashMode READ flashMode WRITE setFlashMode)
%%

$prototype=FlashModes flashMode() const
$method=|QCameraExposure::FlashModes|flashMode|

$prototype=void setFlashMode(FlashModes mode)
$slotMethod=|void|setFlashMode|QCameraExposure::FlashModes

%%
%% Q_PROPERTY(QCameraExposure::ExposureMode exposureMode READ exposureMode WRITE setExposureMode)
%%

$prototype=ExposureMode exposureMode() const
$method=|QCameraExposure::ExposureMode|exposureMode|

$prototype=void setExposureMode(ExposureMode mode)
$slotMethod=|void|setExposureMode|QCameraExposure::ExposureMode

%%
%% Q_PROPERTY(QCameraExposure::MeteringMode meteringMode READ meteringMode WRITE setMeteringMode)
%%

$prototype=MeteringMode meteringMode() const
$method=|QCameraExposure::MeteringMode|meteringMode|

$prototype=void setMeteringMode(MeteringMode mode)
$slotMethod=|void|setMeteringMode|QCameraExposure::MeteringMode

%%
%%
%%

$prototype=bool isAvailable() const
$method=|bool|isAvailable|

$prototype=bool isExposureModeSupported(ExposureMode mode) const
$method=|bool|isExposureModeSupported|QCameraExposure::ExposureMode

$prototype=bool isFlashModeSupported(FlashModes mode) const
$method=|bool|isFlashModeSupported|QCameraExposure::FlashModes

$prototype=bool isMeteringModeSupported(MeteringMode mode) const
$method=|bool|isMeteringModeSupported|QCameraExposure::MeteringMode

$prototype=qreal requestedAperture() const
$method=|qreal|requestedAperture|

$prototype=int requestedIsoSensitivity() const
$method=|int|requestedIsoSensitivity|

$prototype=qreal requestedShutterSpeed() const
$method=|qreal|requestedShutterSpeed|

$prototype=void setSpotMeteringPoint(const QPointF & point)
$method=|void|setSpotMeteringPoint|const QPointF &

$prototype=QPointF spotMeteringPoint() const
$method=|QPointF|spotMeteringPoint|

$prototype=QList<qreal> supportedApertures(bool * continuous = Q_NULLPTR) const
$method=|QList<qreal>|supportedApertures|bool *=0

$prototype=QList<int> supportedIsoSensitivities(bool * continuous = Q_NULLPTR) const
$method=|QList<int>|supportedIsoSensitivities|bool *=0

$prototype=QList<qreal> supportedShutterSpeeds(bool * continuous = Q_NULLPTR) const
$method=|QList<qreal>|supportedShutterSpeeds|bool *=0

$prototype=void setAutoAperture()
$slotMethod=|void|setAutoAperture|

$prototype=void setAutoIsoSensitivity()
$slotMethod=|void|setAutoIsoSensitivity|

$prototype=void setAutoShutterSpeed()
$slotMethod=|void|setAutoShutterSpeed|

$prototype=void setManualAperture(qreal aperture)
$slotMethod=|void|setManualAperture|qreal

$prototype=void setManualIsoSensitivity(int iso)
$slotMethod=|void|setManualIsoSensitivity|int

$prototype=void setManualShutterSpeed(qreal seconds)
$slotMethod=|void|setManualShutterSpeed|qreal

$beginSignals
$signal=|apertureChanged(qreal)
$signal=|apertureRangeChanged()
$signal=|exposureCompensationChanged(qreal)
$signal=|flashReady(bool)
$signal=|isoSensitivityChanged(int)
$signal=|shutterSpeedChanged(qreal)
$signal=|shutterSpeedRangeChanged()
$endSignals

#pragma ENDDUMP

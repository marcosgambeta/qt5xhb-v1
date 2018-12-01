%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QMediaControl

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QCameraFlashControl(QObject *parent = Q_NULLPTR) [protected]

$prototype=~QCameraFlashControl()
$deleteMethod

$prototype=virtual QCameraExposure::FlashModes flashMode() const = 0
$virtualMethod=|QCameraExposure::FlashModes|flashMode|

$prototype=virtual bool isFlashModeSupported(QCameraExposure::FlashModes mode) const = 0
$virtualMethod=|bool|isFlashModeSupported|QCameraExposure::FlashModes

$prototype=virtual bool isFlashReady() const = 0
$virtualMethod=|bool|isFlashReady|

$prototype=virtual void setFlashMode(QCameraExposure::FlashModes mode) = 0
$virtualMethod=|void|setFlashMode|QCameraExposure::FlashModes

$beginSignals
$signal=|flashReady(bool)
$endSignals

#pragma ENDDUMP

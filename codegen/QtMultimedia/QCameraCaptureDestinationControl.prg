%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QMediaObject

%%   METHOD new
   METHOD delete

   METHOD captureDestination
   METHOD isCaptureDestinationSupported
   METHOD setCaptureDestination

   METHOD onCaptureDestinationChanged

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QCameraCaptureDestinationControl(QObject *parent = Q_NULLPTR) (protected)

$prototype=~QCameraCaptureDestinationControl()
$deleteMethod

$prototype=virtual QCameraImageCapture::CaptureDestinations captureDestination() const = 0
$virtualMethod=|QCameraImageCapture::CaptureDestinations|captureDestination|

$prototype=virtual bool isCaptureDestinationSupported(QCameraImageCapture::CaptureDestinations destination) const = 0
$virtualMethod=|bool|isCaptureDestinationSupported|QCameraImageCapture::CaptureDestinations

$prototype=virtual void setCaptureDestination(QCameraImageCapture::CaptureDestinations destination) = 0
$virtualMethod=|void|setCaptureDestination|QCameraImageCapture::CaptureDestinations

$beginSignals
$signal=|captureDestinationChanged(QCameraImageCapture::CaptureDestinations)
$endSignals

#pragma ENDDUMP

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

$beginClassFrom=QMediaObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QCameraControl(QObject *parent = Q_NULLPTR) [protected]

$prototype=~QCameraControl()
$deleteMethod

$prototype=virtual bool canChangeProperty(PropertyChangeType changeType, QCamera::Status status) const = 0
$virtualMethod=|bool|canChangeProperty|QCameraControl::PropertyChangeType,QCamera::Status

$prototype=virtual QCamera::CaptureModes captureMode() const = 0
$virtualMethod=|QCamera::CaptureModes|captureMode|

$prototype=virtual bool isCaptureModeSupported(QCamera::CaptureModes mode) const = 0
$virtualMethod=|bool|isCaptureModeSupported|QCamera::CaptureModes

$prototype=virtual void setCaptureMode(QCamera::CaptureModes mode) = 0
$virtualMethod=|void|setCaptureMode|QCamera::CaptureModes

$prototype=virtual void setState(QCamera::State state) = 0
$virtualMethod=|void|setState|QCamera::State

$prototype=virtual QCamera::State state() const = 0
$virtualMethod=|QCamera::State|state|

$prototype=virtual QCamera::Status status() const = 0
$virtualMethod=|QCamera::Status|status|

$beginSignals
$signal=|captureModeChanged(QCamera::CaptureModes)
$signal=|error(int,QString)
$signal=|stateChanged(QCamera::State)
$signal=|statusChanged(QCamera::Status)
$endSignals

#pragma ENDDUMP

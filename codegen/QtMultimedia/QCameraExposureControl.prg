%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototype=explicit QCameraExposureControl(QObject *parent = Q_NULLPTR) [protected]

$prototype=~QCameraExposureControl()
$deleteMethod

$prototype=virtual QVariant actualValue(ExposureParameter parameter) const = 0
$virtualMethod=|QVariant|actualValue|QCameraExposureControl::ExposureParameter

$prototype=virtual bool isParameterSupported(ExposureParameter parameter) const = 0
$virtualMethod=|bool|isParameterSupported|QCameraExposureControl::ExposureParameter

$prototype=virtual QVariant requestedValue(ExposureParameter parameter) const = 0
$virtualMethod=|QVariant|requestedValue|QCameraExposureControl::ExposureParameter

$prototype=virtual bool setValue(ExposureParameter parameter, const QVariant & value) = 0
$virtualMethod=|bool|setValue|QCameraExposureControl::ExposureParameter,const QVariant &

$prototype=virtual QVariantList supportedParameterRange(ExposureParameter parameter, bool * continuous) const = 0
$virtualMethod=|QVariantList|supportedParameterRange|QCameraExposureControl::ExposureParameter,bool *

$beginSignals
$signal=|actualValueChanged(int)
$signal=|parameterRangeChanged(int)
$signal=|requestedValueChanged(int)
$endSignals

#pragma ENDDUMP

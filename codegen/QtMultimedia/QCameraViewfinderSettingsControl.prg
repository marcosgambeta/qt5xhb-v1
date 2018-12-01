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

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QCameraViewfinderSettingsControl(QObject *parent = Q_NULLPTR) [protected]

$prototype=~QCameraViewfinderSettingsControl()
$deleteMethod

$prototype=virtual bool isViewfinderParameterSupported(ViewfinderParameter parameter) const = 0
$virtualMethod=|bool|isViewfinderParameterSupported|QCameraViewfinderSettingsControl::ViewfinderParameter

$prototype=virtual void setViewfinderParameter(ViewfinderParameter parameter, const QVariant & value) = 0
$virtualMethod=|void|setViewfinderParameter|QCameraViewfinderSettingsControl::ViewfinderParameter,const QVariant &

$prototype=virtual QVariant viewfinderParameter(ViewfinderParameter parameter) const = 0
$virtualMethod=|QVariant|viewfinderParameter|QCameraViewfinderSettingsControl::ViewfinderParameter

#pragma ENDDUMP

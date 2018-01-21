%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QCameraViewfinderSettingsControl INHERIT QMediaControl

%%   METHOD new
   METHOD delete

   METHOD isViewfinderParameterSupported
   METHOD setViewfinderParameter
   METHOD viewfinderParameter

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QCameraViewfinderSettingsControl(QObject *parent = Q_NULLPTR) (protected)

$prototype=~QCameraViewfinderSettingsControl()
$deleteMethod

$prototype=virtual bool isViewfinderParameterSupported(ViewfinderParameter parameter) const = 0
$virtualMethod=|bool|isViewfinderParameterSupported|QCameraViewfinderSettingsControl::ViewfinderParameter

$prototype=virtual void setViewfinderParameter(ViewfinderParameter parameter, const QVariant & value) = 0
$virtualMethod=|void|setViewfinderParameter|QCameraViewfinderSettingsControl::ViewfinderParameter,const QVariant &

$prototype=virtual QVariant viewfinderParameter(ViewfinderParameter parameter) const = 0
$virtualMethod=|QVariant|viewfinderParameter|QCameraViewfinderSettingsControl::ViewfinderParameter

#pragma ENDDUMP

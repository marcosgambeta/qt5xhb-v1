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

$beginClassFrom=QMediaControl

%%   METHOD new
   METHOD delete

   METHOD isParameterSupported
   METHOD isParameterValueSupported
   METHOD parameter
   METHOD setParameter

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QCameraImageProcessingControl(QObject *parent = Q_NULLPTR) (protected)

$prototype=~QCameraImageProcessingControl()
$deleteMethod

$prototype=virtual bool isParameterSupported(ProcessingParameter parameter) const = 0
$virtualMethod=|bool|isParameterSupported|QCameraImageProcessingControl::ProcessingParameter

$prototype=virtual bool isParameterValueSupported(ProcessingParameter parameter, const QVariant & value) const = 0
$virtualMethod=|bool|isParameterValueSupported|QCameraImageProcessingControl::ProcessingParameter,const QVariant &

$prototype=virtual QVariant parameter(ProcessingParameter parameter) const = 0
$virtualMethod=|QVariant|parameter|QCameraImageProcessingControl::ProcessingParameter

$prototype=virtual void setParameter(ProcessingParameter parameter, const QVariant & value) = 0
$virtualMethod=|void|setParameter|QCameraImageProcessingControl::ProcessingParameter,const QVariant &

#pragma ENDDUMP
